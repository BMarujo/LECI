#include <stdio.h>
#include <stdlib.h>

typedef struct _queue 
{
    int data;
    struct _queue* prev;
    struct _queue* next;
} queue;

queue* create_node(int item) 
{
    queue* new_node = (queue*) malloc(sizeof(queue));
    new_node->data = item;
    new_node->prev = NULL;
    new_node->next = NULL;
    return new_node;
}

void enqueue(queue** front, queue** rear, int item) 
{
    queue* new_node = create_node(item);
    if (*rear == NULL) {
        *front = *rear = new_node;
        return;
    }
    (*rear)->next = new_node;
    new_node->prev = *rear;
    *rear = new_node;
}

int dequeue(queue** front, queue** rear) 
{
    if (*front == NULL) {
        printf("Queue Underflow\n");
        return -1;
    }
    queue* temp = *front;
    int item = temp->data;
    *front = (*front)->next;
    if (*front != NULL) {
        (*front)->prev = NULL;
    }
    if (*front == NULL) {
        *rear = NULL;
    }
    free(temp);
    return item;
}

int main() 
{
    queue* front = NULL;
    queue* rear = NULL;
    enqueue(&front, &rear, 1);
    enqueue(&front, &rear, 2);
    enqueue(&front, &rear, 3);
    printf("%d\n", dequeue(&front, &rear));
    printf("%d\n", dequeue(&front, &rear));
    printf("%d\n", dequeue(&front, &rear));
    return 0;
}
