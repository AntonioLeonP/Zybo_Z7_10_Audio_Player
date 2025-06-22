typedef struct{
    volatile int value;
}mutex;

void lock(mutex *mut);
void unlock(mutex *mut);
