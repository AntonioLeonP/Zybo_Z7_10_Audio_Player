#include <stdint.h>

void context_swtich(uint32_t **old_sp, uint32_t **new_sp);
void scheduler();
int init_scheduler();
void irq_timer_handler();
void set_priority_current_task(uint32_t new_priority);
