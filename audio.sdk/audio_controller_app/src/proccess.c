#include <stdint.h>
#include "xil_printf.h"
#include <stdio.h>

#include "process.h"

uint8_t num_process = 0;
uint8_t current_process = 0;

int create_task(void (*process_function)(void), uint32_t priority){
    if (num_process == MAX_PROCESS)
        return 0;
    
    processSystem[num_process].process_function = process_function;
    processSystem[num_process].priority = priority;
    processSystem[num_process].state = ready;

    uint32_t *new_stack = (uint32_t *)(((uint32_t)&stacks[num_process][STACK_SIZE - 1]) & ~0x7);

    *--new_stack = (uint32_t)process_function; // PC
    for (int i = 0; i < 13; i++) { // Initialize register R0 to R12
            *--new_stack = (uint32_t)0;
    }
    *--new_stack = (uint32_t)0x1F; // CPSR

    processSystem[num_process].stack_pointer = new_stack;
    printf("Task %d stack pointer set to %p\n", num_process, (void*)processSystem[num_process].stack_pointer);

    num_process++;
    return 1;
}
