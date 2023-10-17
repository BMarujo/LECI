#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#define BUFFER_SIZE 10
//doesn't have main funtion
typedef struct {
    int buffer[BUFFER_SIZE];
    int head;
    int tail;
} circular_buffer;

void init(circular_buffer *cb) {
    cb->head = 0;
    cb->tail = 0;
}

bool is_empty(circular_buffer *cb) {
    return cb->head == cb->tail;
}

bool is_full(circular_buffer *cb) {
    return (cb->tail + 1) % BUFFER_SIZE == cb->head;
}

void push_back(circular_buffer *cb, int data) {
    if (!is_full(cb)) {
        cb->buffer[cb->tail] = data;
        cb->tail = (cb->tail + 1) % BUFFER_SIZE;
    }
}

void push_front(circular_buffer *cb, int data) {
    if (!is_full(cb)) {
        cb->head = (cb->head - 1 + BUFFER_SIZE) % BUFFER_SIZE;
        cb->buffer[cb->head] = data;
    }
}

int pop_back(circular_buffer *cb) {
    if (!is_empty(cb)) {
        cb->tail = (cb->tail - 1 + BUFFER_SIZE) % BUFFER_SIZE;
        return cb->buffer[cb->tail];
    }
    return 0;
}

int pop_front(circular_buffer *cb) {
    if (!is_empty(cb)) {
        int data = cb->buffer[cb->head];
        cb->head = (cb->head + 1) % BUFFER_SIZE;
        return data;
    }
    return 0;
}
