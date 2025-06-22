#include "scheduler.h"
#include "process.h"
#include "mutex.h"
#include "timer.h"
#include "interrupt.h"
#include "xil_printf.h"
#include <stdio.h>

int interruptContext = 0;

void contextSwitch(uint32_t **old_sp, uint32_t **new_sp) {
    asm volatile(
        // Guardar contexto del proceso actual
    	"STMDB sp!, {lr}           \n"  // Guarda registros en la pila
        "STMDB sp!, {r0-r12}       \n"  // Guarda registros en la pila
        "MRS   r0, CPSR            \n"  // Guarda CPSR en r0
    	"BIC   r0, r0, #0x80       \n"
        "STMDB sp!, {r0}           \n"  // Guarda CPSR en la pila

        // Restaurar contexto del nuevo proceso
        "LDR   sp, [%1]            \n"  // Cargar el stack pointer de new_sp
        "LDMIA sp!, {r0}           \n"  // Restaurar CPSR
    	"BIC   r0, r0, #0x80       \n"
        "MSR   CPSR, r0            \n"  // Aplicar CPSR
        "LDMIA sp!, {r0-r12}   	   \n"  // Restaurar registros
        "LDMIA sp!, {lr}           \n"  // Restaurar registros
        "BX    lr                  \n"  // Saltar a la nueva tarea
        :
        : "r"(old_sp), "r"(new_sp)
        : "r0", "memory"
    );
}

void contextSwitchFromISR(uint32_t **old_sp, uint32_t **new_sp) {
    asm volatile(
        // Guarda el contexto del proceso actual
        "STMDB sp!, {lr}           \n"  // Guarda el enlace de retorno (LR)
        "STMDB sp!, {r0-r12}       \n"  // Guarda registros de trabajo
        "MRS   r0, SPSR            \n"  // Guarda SPSR (estado de la CPU)
    	"BIC   r0, r0, #0x80       \n"  // Habilitar interrupciones IRQ en SPSR (bit 7 = 0)
        "STMDB sp!, {r0}           \n"  // Almacena SPSR en la pila

        // Carga el contexto del nuevo proceso
        "LDR   sp, [%1]            \n"  // Cargar el stack pointer del nuevo proceso
        "LDMIA sp!, {r0}           \n"  // Restaurar SPSR
    	"BIC   r0, r0, #0x80       \n"  // Habilitar interrupciones IRQ en SPSR (bit 7 = 0)
        "MSR   SPSR_cxsf, r0       \n"  // Aplicar SPSR correctamente
        "LDMIA sp!, {r0-r12}       \n"  // Restaurar registros de trabajo
        "LDMIA sp!, {lr}           \n"  // Restaurar LR

        // Cambio importante: Usamos "MOVS" para restaurar el estado correctamente
        "MOVS  pc, lr              \n"  // Regresa al proceso restaurando CPSR´
        :
        : "r"(old_sp), "r"(new_sp)
        : "r0", "memory"
    );
}




void initFirstProcess(uint32_t **new_sp) {
	asm volatile(
	        // Restaurar contexto del nuevo proceso
	        "LDR   sp, [%0]            \n"  // Cargar el stack pointer de new_sp
	        "LDMIA sp!, {r0}           \n"  // Restaurar CPSR
			"BIC   r0, r0, #0x80       \n"
	        "MSR   CPSR, r0            \n"  // Aplicar CPSR
			"LDMIA sp!, {r0-r12}   	   \n"  // Restaurar registros
	        "LDMIA sp!, {lr}           \n"  // Restaurar registros
	        "BX    lr                  \n"  // Saltar a la nueva tarea
	        :
	        : "r"(new_sp)
	        : "r0", "memory"
	    );

}


void scheduler(){
    uint32_t index = 0;
    timer_stop();
    processSystem[current_process].state = ready;
    uint32_t max_priority = 0;
    for (int i = 1; i <= num_process;i++) {
    	if (processSystem[(current_process + i) % num_process].state == ready && processSystem[(current_process + i) % num_process].priority > max_priority) {
    		max_priority = processSystem[(current_process + i) % num_process].priority;
    		index = i;
    	}
    }
    int old_process = current_process;
    current_process = (current_process + index) % num_process;
    
    processSystem[current_process].state = running;
    timer_start();
    if (interruptContext == 1) {
    	interruptContext = 0;
    	contextSwitchFromISR(&processSystem[old_process].stack_pointer, &processSystem[current_process].stack_pointer);
    }else {
    	contextSwitch(&processSystem[old_process].stack_pointer, &processSystem[current_process].stack_pointer);
    }
}

int init_scheduler(){
    if (num_process == 0)
        return -1;

    timer_init(DEFAULT_PROCESS_TIME);
    //initGIC();
    //GICConnectTimer(IRQ_TIMER_ID, irq_timer_handler);
    //GICEnable(IRQ_TIMER_ID);
    //ExceptionInit();
    //xceptionRegisterHandler();
    //ExceptionEnable();
    //timer_start();
    uint32_t max_priority = 0;
    int index = 0;
    for (int i = 0;i < num_process; i++) {
    	if (processSystem[i].priority > max_priority) {
    	    max_priority = processSystem[(current_process + i) % num_process].priority;
    	    index = i;
    	 }
    }
    current_process = index;
    initFirstProcess(&processSystem[index].stack_pointer);
    
    return 0;
}

void irq_timer_handler(){
	timer_stop();
	clearCallback();
	interruptContext = 1;
    scheduler();
}

void set_priority_current_task(uint32_t new_priority) {
	processSystem[current_process].priority = new_priority;
}
