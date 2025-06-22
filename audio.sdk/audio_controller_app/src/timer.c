#include <stdint.h>

#include "timer.h"

void timer_init(uint32_t load_value) {
    PRIVATE_TIMER_TIME = load_value;
    PRIVATE_TIMER_CONTROL |= (1 << 1) | (1 << 2);
}

void clear_timer_flag(){
    PRIVATE_TIMER_INTERRUPT = (1 << 0);
}

void timer_start(){
    PRIVATE_TIMER_CONTROL |= (1 << 0);
}

void timer_stop(){
    PRIVATE_TIMER_CONTROL &= ~(1 << 0);
}
