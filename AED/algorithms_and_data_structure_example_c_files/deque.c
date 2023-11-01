#include <stdio.h>
#include <stdlib.h>

#define CAPACITY 100

typedef struct _deque 
{
    int array[CAPACITY];
    int front;
    int rear;
    int size;
} deque;

void init(deque* q) 
{
    q->front = -1;
    q->rear = -1;
    q->size = 0;
}

int is_empty(deque* q) 
{
    return q->front == -1 && q->rear == -1;
}

int is_full(deque* q) 
{
    return ((q->rear + 1) % CAPACITY == q->front);
}

void insert_front(deque* q, int item) 
{
    if (is_full(q)) {
        printf("Deque Overflow\n");
        return;
    }
    if (is_empty(q)) {
        q->front = q->rear = 0;
    } else {
        q->front = (q->front - 1 + CAPACITY) % CAPACITY;
    }
    q->array[q->front] = item;
    q->size++;
}

void insert_rear(deque* q, int item) 
{
    if (is_full(q)) {
        printf("Deque Overflow\n");
        return;
    }
    if (is_empty(q)) {
        q->front = q->rear = 0;
    } else {
        q->rear = (q->rear + 1) % CAPACITY;
    }
    q->array[q->rear] = item;
    q->size++;
}

int remove_front(deque* q) 
{
    if (is_empty(q)) {
        printf("Deque Underflow\n");
        return -1;
    }
    int item = q->array[q->front];
    if (q->front == q->rear) {
        q->front = q->rear = -1;
    } else {
        q->front = (q->front + 1) % CAPACITY;
    }
    q->size--;
    return item;
}

int remove_rear(deque* q) 
{
    if (is_empty(q)) {
        printf("Deque Underflow\n");
        return -1;
    }
    int item = q->array[q->rear];
    if (q->front == q->rear) {
        q->front = q->rear = -1;
    } else {
        q->rear = (q->rear - 1 + CAPACITY) % CAPACITY;
    }
    q->size--;
    return item;
}

int size(deque* q) 
{
    return q->size;
}

int main() 
{
    deque q;
    init(&q);
    insert_rear(&q, 1);
    insert_rear(&q, 2);
    insert_rear(&q, 3);
    insert_front(&q, 0);
    printf("Size: %d\n", size(&q));
    int item = remove_front(&q);
    printf("Removed item: %d\n", item);
    item = remove_rear(&q);
    printf("Removed item: %d\n", item);
    printf("Size: %d\n", size(&q));
    return 0;
}
