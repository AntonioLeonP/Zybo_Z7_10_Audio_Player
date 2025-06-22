#include <stdint.h>

#define MAX_PROCESS 5
#define STACK_SIZE 1024
extern uint8_t num_process;
extern uint8_t current_process;
uint32_t stacks[MAX_PROCESS][STACK_SIZE];

typedef enum{
	stopped = 0,
    running,
    ready
} processState;

typedef struct{
    void (*process_function)(void);
    uint32_t *stack_pointer;
    uint32_t priority;
    processState state;
} processData;

processData processSystem[MAX_PROCESS];

int create_task(void (*task_function)(void), uint32_t priority);
