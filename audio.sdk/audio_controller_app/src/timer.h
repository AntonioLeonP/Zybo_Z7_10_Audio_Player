#define PRIVATE_TIMER_BASE  0xF8F00600
#define PRIVATE_TIMER_TIME      (*(volatile uint32_t *)(PRIVATE_TIMER_BASE + 0x00))
#define PRIVATE_TIMER_COUNTER 	(*(volatile uint32_t *)(PRIVATE_TIMER_BASE + 0x04))
#define PRIVATE_TIMER_CONTROL   (*(volatile uint32_t *)(PRIVATE_TIMER_BASE + 0x08))
#define PRIVATE_TIMER_INTERRUPT (*(volatile uint32_t *)(PRIVATE_TIMER_BASE + 0x0C))

#define DEFAULT_PROCESS_TIME    0x3FFFFFFF
#define IRQ_TIMER_ID        29

void timer_init(uint32_t load_value);
void clear_timer_flag();
void timer_start();
void timer_stop();
