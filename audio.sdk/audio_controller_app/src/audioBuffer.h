#include "xil_types.h"
#define AUDIO_BUFFER_SIZE 1048576// puede ajustarse

typedef struct {
	u32 left[AUDIO_BUFFER_SIZE];
	u32 right[AUDIO_BUFFER_SIZE];
	int head;
	int tail;
	int count;
} AudioBuffer;

extern volatile AudioBuffer audioBuffer;
int buffer_is_full();
int buffer_is_empty();
void buffer_push(u32 left, u32 right);
int buffer_pop(u32* right, u32* left);
