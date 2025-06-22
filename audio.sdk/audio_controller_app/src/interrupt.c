#include "interrupt.h"
#define GIC_DEVICE_ID        XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_DEVICE_ID      XPAR_SCUTIMER_DEVICE_ID

XScuGic Intc;
XScuGic_Config *GicConfig;
XScuTimer Timer;

void initGIC() {
	GicConfig = XScuGic_LookupConfig(GIC_DEVICE_ID);
	XScuGic_CfgInitialize(&Intc, GicConfig, GicConfig->CpuBaseAddress);
}

void GICConnectTimer(u32 Int_Id, Xil_InterruptHandler Handler) {
	XScuTimer_Config *TimerConfig;
	TimerConfig = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	XScuTimer_CfgInitialize(&Timer, TimerConfig, TimerConfig->BaseAddr);
	XScuGic_Connect(&Intc, Int_Id, (Xil_ExceptionHandler)Handler,  (void *)&Timer);
}

void GICEnable(u32 Int_Id) {
	XScuGic_Enable(&Intc, Int_Id);
}

void ExceptionInit() {
	Xil_ExceptionInit();
}

void ExceptionRegisterHandler() {
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler,&Intc);
}

void ExceptionEnable() {
	Xil_ExceptionEnable();
}

void clearCallback() {
	XScuTimer_ClearInterruptStatus(&Timer);
}
