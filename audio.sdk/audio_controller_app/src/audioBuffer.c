#include "audioBuffer.h"

volatile AudioBuffer audioBuffer = { .head = 0, .tail = 0, .count = 0 };

int buffer_is_full() {
	return audioBuffer.count == AUDIO_BUFFER_SIZE;
}

int buffer_is_empty() {
	return audioBuffer.count == 0;
}

void buffer_push(u32 left, u32 right) {
	if (!buffer_is_full()) {
		audioBuffer.left[audioBuffer.head] = left;
		audioBuffer.right[audioBuffer.head] = right;
		audioBuffer.head = (audioBuffer.head + 1) % AUDIO_BUFFER_SIZE;
		audioBuffer.count++;
	}
}

int buffer_pop(u32* left, u32* right) {
	if (!buffer_is_empty()) {
		*left = audioBuffer.left[audioBuffer.tail];
		*right = audioBuffer.right[audioBuffer.tail];
		audioBuffer.tail = (audioBuffer.tail + 1) % AUDIO_BUFFER_SIZE;
		audioBuffer.count--;
		return 1;
	}
	return 0;
}
