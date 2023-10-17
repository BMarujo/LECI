#include <stdio.h>
#include <stdbool.h>

#define CAPACITY 10

typedef struct _queue 
{
    int array[CAPACITY];
    int front;
    int size;
} queue;

bool is_full(queue* q) 
{
    return q->size == CAPACITY;
}

bool is_empty(queue* q) 
{
    return q->size == 0;
}

void enqueue(queue* q, int item) 
{
    if (is_full(q)) {
        printf("Queue Overflow\n");
        return;
    }
    q->array[(q->front + q->size) % CAPACITY] = item;
    q->size++;
}

int dequeue(queue* q) 
{
    if (is_empty(q)) {
        printf("Queue Underflow\n");
        return -1;
    }
    int item = q->array[q->front];
    q->front = (q->front + 1) % CAPACITY;
    q->size--;
    return item;
}

int main() 
{
    queue q;
    q.front = 0;
    q.size = 0;
    enqueue(&q, 1);
    enqueue(&q, 2);
    enqueue(&q, 3);
    printf("%d\n", dequeue(&q));
    printf("%d\n", dequeue(&q));
    printf("%d\n", dequeue(&q));
    return 0;
}
