
#include "zybo_audio.h"
#include <stdio.h>
#include <xil_io.h>
#include <sleep.h>
#include "xiicps.h"
#include <xil_printf.h>
#include <xparameters.h>
#include "xfir.h"
#include "ff.h"
#include "xuartps.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "scheduler.h"
#include "process.h"
#include "audioBuffer.h"

typedef short		Xint16;
typedef long		Xint32;
#define TIMER_FREQ_HZ (XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2)

unsigned char IicConfig(unsigned int DeviceIdPS);
void AudioWriteToReg(unsigned char u8RegAddr, short u16Data);
void LineinLineoutConfig();
void CodecPlaybackConfig();

XIicPs Iic;
XScuTimer TimerInstance;

//WAV GLOBALS
FIL fil;
FRESULT res;
UINT br;
u8 buffer[AUDIO_BUFFER_SIZE*4];
FATFS fatfs;

// HLS FIR HW instance
XFir HlsFir_left, HlsFir_right;
//Interrupt Controller Instance
XScuGic ScuGic;
//Global variables used by ISR
int ResultAvailHlsFir_left, ResultAvailHlsFir_right;

int hls_fir_init(XFir *hls_firPtr_left, XFir *hls_firPtr_right)
{
   XFir_Config *cfgPtr_left, *cfgPtr_right;
   int status;

   cfgPtr_left = XFir_LookupConfig(XPAR_FIR_LEFT_DEVICE_ID);
   if (!cfgPtr_left) {
      print("ERROR: Lookup of Left FIR configuration failed.\n\r");
      return XST_FAILURE;
   }
   status = XFir_CfgInitialize(hls_firPtr_left, cfgPtr_left);
   if (status != XST_SUCCESS) {
      print("ERROR: Could not initialize left FIR.\n\r");
      return XST_FAILURE;
   }

   cfgPtr_right = XFir_LookupConfig(XPAR_FIR_RIGHT_DEVICE_ID);
   if (!cfgPtr_right) {
      print("ERROR: Lookup of Right FIR configuration failed.\n\r");
      return XST_FAILURE;
   }
   status = XFir_CfgInitialize(hls_firPtr_right, cfgPtr_right);
   if (status != XST_SUCCESS) {
      print("ERROR: Could not initialize right FIR.\n\r");
      return XST_FAILURE;
   }

   return status;
}

int TimerInitialize(void)
{
	int Status;
	XScuTimer *TimerInstancePtr = &TimerInstance;
	XScuTimer_Config *ConfigTmrPtr;

	/* Initialize the Scu Private Timer driver. */
	ConfigTmrPtr = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);

	/* This is where the virtual address would be used, this uses physical address. */
	Status = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigTmrPtr,
			ConfigTmrPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Disable Auto reload mode and set prescaler to 1 */
	XScuTimer_SetPrescaler(TimerInstancePtr, 0);

	return Status;
}

void TimerDelay(u32 uSDelay)
{
	u32 timerCnt;

	timerCnt = (TIMER_FREQ_HZ / 1000000) * uSDelay;

	XScuTimer_Stop(&TimerInstance);
	XScuTimer_DisableAutoReload(&TimerInstance);
	XScuTimer_LoadTimer(&TimerInstance, timerCnt);
	XScuTimer_Start(&TimerInstance);
	while (XScuTimer_GetCounterValue(&TimerInstance))
	{}

	return;
}
void hls_fir_left_isr(void *InstancePtr)
{
	   XFir *pAccelerator = (XFir *)InstancePtr;

	   // clear the local interrupt
	   XFir_InterruptClear(pAccelerator,1);

	   ResultAvailHlsFir_left = 1;
}

void hls_fir_right_isr(void *InstancePtr)
{
	   XFir *pAccelerator = (XFir *)InstancePtr;

	   // clear the local interrupt
	   XFir_InterruptClear(pAccelerator,1);

	   ResultAvailHlsFir_right = 1;
}

int setup_interrupt()
{
	   //This functions sets up the interrupt on the ARM
	   int result;
	   XScuGic_Config *pCfg = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID);
	   if (pCfg == NULL){
	      print("Interrupt Configuration Lookup Failed\n\r");
	      return XST_FAILURE;
	   }
	   result = XScuGic_CfgInitialize(&ScuGic,pCfg,pCfg->CpuBaseAddress);
	   if(result != XST_SUCCESS){
	      return result;
	   }
	   // self test
	   result = XScuGic_SelfTest(&ScuGic);
	   if(result != XST_SUCCESS){
	      return result;
	   }
	   // Initialize the exception handler
	   Xil_ExceptionInit();
	   // Register the exception handler
	   Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,&ScuGic);
	   //Enable the exception handler
	   Xil_ExceptionEnable();
	   // Connect the Left FIR ISR to the exception table
	   result = XScuGic_Connect(&ScuGic,XPAR_FABRIC_FIR_LEFT_INTERRUPT_INTR,(Xil_InterruptHandler)hls_fir_left_isr,&HlsFir_left);
	   if(result != XST_SUCCESS){
	      return result;
	   }
	   // Connect the Right FIR ISR to the exception table
	   result = XScuGic_Connect(&ScuGic,XPAR_FABRIC_FIR_RIGHT_INTERRUPT_INTR,(Xil_InterruptHandler)hls_fir_right_isr,&HlsFir_right);
	   if(result != XST_SUCCESS){
	      return result;
	   }
	   // Enable the Left FIR ISR
	   XScuGic_Enable(&ScuGic,XPAR_FABRIC_FIR_LEFT_INTERRUPT_INTR);
	   // Enable the Right FIR ISR
	   XScuGic_Enable(&ScuGic,XPAR_FABRIC_FIR_RIGHT_INTERRUPT_INTR);
	   return XST_SUCCESS;
}

void filter_or_bypass_input(void) {
	u32 u32DataL, u32DataR;
	//xil_printf("A %d\n\r",audioBuffer.count);

	while (1) {
		if (!buffer_pop(&u32DataL, &u32DataR)) {
			scheduler();
		}

		//xil_printf("VALORES %d %d\n\r",u32DataL,u32DataR);

		// Aplicar FIR si SW0 está activado
		int sw_check = Xil_In32(XPAR_AXI_GPIO_0_BASEADDR + 8);
		if (sw_check & 0x01) {
			XFir_Set_x(&HlsFir_left, u32DataL >> 8);
			XFir_Set_x(&HlsFir_right, u32DataR >> 8);

			ResultAvailHlsFir_left = 0;
			ResultAvailHlsFir_right = 0;

			XFir_Start(&HlsFir_left);
			XFir_Start(&HlsFir_right);

			while (!ResultAvailHlsFir_left);
			u32DataL = XFir_Get_y(&HlsFir_left);

			while (!ResultAvailHlsFir_right);
			u32DataR = XFir_Get_y(&HlsFir_right);

			u32DataL <<= 8;
			u32DataR <<= 8;
		}

		while ((Xil_In32(I2S_STATUS_REG) & 0x01) == 0);
		Xil_Out32(I2S_STATUS_REG, 0x00000001);

		Xil_Out32(I2S_DATA_TX_L_REG, u32DataL);
		Xil_Out32(I2S_DATA_TX_R_REG, u32DataR);
		//scheduler();
	}
}

int skip_to_data_chunk(FIL *fp) {
    char chunk_id[4];
    u32 chunk_size;

    // Leer encabezado RIFF
    f_read(fp, buffer, 12, &br); // "RIFF" + size + "WAVE"
    if (br < 12 || strncmp((char*)buffer, "RIFF", 4) != 0 || strncmp((char*)(buffer + 8), "WAVE", 4) != 0) {
        xil_printf("Archivo no es WAV válido\n\r");
        return 0;
    }

    // Buscar el chunk 'data'
    while (1) {
        // Leer ID del chunk y tamaño
        f_read(fp, chunk_id, 4, &br);
        if (br < 4) {
            xil_printf("Error leyendo chunk header\n\r");
            return 0;
        }

        f_read(fp, &chunk_size, 4, &br);
        if (br < 4) {
            xil_printf("Error leyendo chunk size\n\r");
            return 0;
        }

        if (strncmp(chunk_id, "data", 4) == 0) {
            xil_printf("Encontrado chunk de datos, tamaño: %lu\n\r", chunk_size);
            break;
        } else {
            f_lseek(fp, f_tell(fp) + chunk_size);
        }
    }
    return 1;
}

int initWav() {
    res = f_mount(&fatfs, "", 0);
    if ( res != FR_OK) {
    	xil_printf("FATAL ERROR: MOUNT FILE SYSTEM ENDED WITH %d\n\r",res);
    }

    res = f_open(&fil, "audio2.wav", FA_READ);
    if (res != FR_OK) {
        xil_printf("Error opening WAV\n\r");
        return 0;
    }

    if (!skip_to_data_chunk(&fil)) {
        xil_printf("Unable to find data chunk\n\r");
        return 0;
    }

    xil_printf("DIR FIL: %p\n\r", &fil);
    return 1;
}

void PlayWavTask(void) {
	while (1) {
		res = f_read(&fil, buffer, sizeof(buffer), &br);
		if (res != FR_OK) {
			xil_printf("FATAL ERROR: F_READ ENDED WITH ERROR %d\n\r", res);
			break;
		}

		if (br == 0) {
			xil_printf("The song has finished, restarting...\n\r");
			f_lseek(&fil, 0);
			if (!skip_to_data_chunk(&fil)) {
			   xil_printf("Unable to find data chunk\n\r");
			  break;
			}
		}

		for (int i = 0; i < br; i += 4) {
			u16 left = buffer[i] | (buffer[i + 1] << 8);
			u16 right = buffer[i + 2] | (buffer[i + 3] << 8);

			u32 l_sample = ((u32)left) << 8;
			u32 r_sample = ((u32)right) << 8;

			while (buffer_is_full()) {
				scheduler();
			}

			buffer_push(l_sample, r_sample);
		}
	}
	f_close(&fil);
	xil_printf("Fin del archivo WAV\n\r");
	while (1);
}


int main(void)
{
	int status;

	//Configure the IIC data structure
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);

	// Initialize PS7 timer
	TimerInitialize();

	//Configure the Line in and Line out ports.
	CodecPlaybackConfig();

	xil_printf("ADAU1761 configured\n\r");
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0b1);
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR + 0x4, 0b0);

	// Setup the FIR instances
	status=hls_fir_init(&HlsFir_left, &HlsFir_right);
    if(status != XST_SUCCESS){
	   print("HLS peripheral setup failed\n\r");
	   return(-1);
    }

    //Setup the interrupt
    status = setup_interrupt();
    if(status != XST_SUCCESS){
       print("Interrupt setup failed\n\r");
       return(-1);
    }

    // Enable Global and instance interrupts
    XFir_InterruptEnable(&HlsFir_left,1);
    XFir_InterruptGlobalEnable(&HlsFir_left);
    XFir_InterruptEnable(&HlsFir_right,1);
    XFir_InterruptGlobalEnable(&HlsFir_right);

	ResultAvailHlsFir_left = 0;
	ResultAvailHlsFir_right = 0;

	if (initWav() == 0) {
		return (-1);
	}

	create_task(PlayWavTask, 1);
	create_task(filter_or_bypass_input,1);
	init_scheduler();
	return 0;
}

unsigned char IicConfig(unsigned int DeviceIdPS)
{

	XIicPs_Config *Config;
	int Status;

	//Initialize the IIC driver so that it's ready to use
	//Look up the configuration in the config table, then initialize it.
	Config = XIicPs_LookupConfig(DeviceIdPS);
	if(NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//Set the IIC serial clock rate.
	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);

	return XST_SUCCESS;
}


/******************************************************************************
 * Function to write 9-bits to one of the registers from the audio
 * controller.
 * @param	u8RegAddr is the register address.
 * @param	u16Data is the data word to write ( only least significant 9 bits).
  * @return	none.
 *****************************************************************************/
void AudioWriteToReg(unsigned char u8RegAddr, short u16Data) {

	unsigned char u8TxData[2];

	u8TxData[0] = (u8RegAddr << 1 ) | ((u16Data >> 8) & 0x01); // append msb of 9-bit data to the reg addr after shifting left
	u8TxData[1] = u16Data & 0xFF;

	XIicPs_MasterSendPolled(&Iic, u8TxData, 2, IIC_SLAVE_ADDR);
	while(XIicPs_BusIsBusy(&Iic));
}

/******************************************************************************
 * Configures Line-In input, ADC's, DAC's, Line-Out and HP-Out.
 * @param   none.
 * @return	none.
 *****************************************************************************/
void LineinLineoutConfig() {

	// software reset
	AudioWriteToReg(R15_SOFTWARE_RESET, 0x000);
	TimerDelay(75000);
	// power mgmt: 0_00110010=>0,Power up, power up, OSC dn, out off, DAC up, ADC up, MIC off, LineIn up
	AudioWriteToReg(R6_POWER_MANAGEMENT, 0x030);
	// left ADC Input: 0_01010111=>0,mute disable, Line volume 0 dB
	AudioWriteToReg(R0_LEFT_ADC_INPUT,0x017);
	// right ADC Input: 0_00010111=>0,mute disable, Line volume 0 dB
	AudioWriteToReg(R1_RIGHT_ADC_INPUT,0x017);
	AudioWriteToReg(R2_LEFT_DAC_VOLUME,0x079);
	AudioWriteToReg(R3_RIGHT_DAC_VOLUME,0x079);
	// analog audio path: 0_00010010=>0,-6 dB side attenuation, sidetone off, DAC selected, bypass disabled, line input, mic mute disabled, 0 dB mic
	AudioWriteToReg(R4_ANALOG_AUDIO_PATH, 0x012);
	// digital audio path: 0_00000000=>0_000, clear offset, no mute, no de-emphasize, adc high-pass filter enabled
	AudioWriteToReg(R5_DIGITAL_AUDIO_PATH, 0x000);
	// digital audio interface: 0_00001110=>0, BCLK not inverted, slave mode, no l-r swap, normal LRC and PBRC, 24-bit, I2S mode
	AudioWriteToReg(R7_DIGITAL_AUDIO_INTERFACE, 0x00A);
	TimerDelay(75000);
	// Digital core:0_00000001=>0_0000000, activate core
	AudioWriteToReg(R9_ACTIVE, 0x001);
	// power mgmt: 0_00100010 0_Power up, power up, OSC dn, out ON, DAC up, ADC up, MIC off, LineIn up
	AudioWriteToReg(R6_POWER_MANAGEMENT, 0x022); // power mgmt: 001100010 turn on OUT

}

void CodecPlaybackConfig() {
	// Software reset
	AudioWriteToReg(R15_SOFTWARE_RESET, 0x000);
	TimerDelay(75000);

	// DAC powered, Line In, ADC, MIC OFF
	AudioWriteToReg(R6_POWER_MANAGEMENT, 0x0E);

	// DAC Volumen
	AudioWriteToReg(R2_LEFT_DAC_VOLUME, 0x079);
	AudioWriteToReg(R3_RIGHT_DAC_VOLUME, 0x079);

	// DAC selected, bypass OFF
	AudioWriteToReg(R4_ANALOG_AUDIO_PATH, 0x012);

	// Digital path: no mute
	AudioWriteToReg(R5_DIGITAL_AUDIO_PATH, 0x000);

	// Digital Audio Interface Format: I2S, 24 bits
	AudioWriteToReg(R7_DIGITAL_AUDIO_INTERFACE, 0x002);

	// Active core
	TimerDelay(75000);
	AudioWriteToReg(R9_ACTIVE, 0x001);

	// DAC ON, Output ON
	AudioWriteToReg(R6_POWER_MANAGEMENT, 0x02);
}



