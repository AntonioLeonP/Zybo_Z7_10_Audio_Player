#include <stdatomic.h>
#include "mutex.h"


void lock(mutex *mut){
    while (atomic_exchange(&(mut->value), 1));
}

void unlock(mutex *mut){
    atomic_store(&(mut->value), 0);
}
