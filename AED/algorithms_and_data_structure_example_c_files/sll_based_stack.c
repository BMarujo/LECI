#include <stdio.h>
#include <stdlib.h>

typedef struct _stack 
{
    int data;
    struct _stack* next;
} stack;

stack* create_node(int item) 
{
    stack* new_node = (stack*) malloc(sizeof(stack));
    new_node->data = item;
    new_node->next = NULL;
    return new_node;
}

void push(stack** top, int item) 
{
    stack* new_node = create_node(item);
    new_node->next = *top;
    *top = new_node;
}

int pop(stack** top) 
{
    if (*top == NULL) {
        printf("Stack Underflow\n");
        return -1;
    }
    stack* temp = *top;
    int item = temp->data;
    *top = (*top)->next;
    free(temp);
    return item;
}

bool is_empty(stack* top) 
{
    return top == NULL;
}

int main() 
{
    stack* top = NULL;
    push(&top, 1);
    push(&top, 2);
    push(&top, 3);
    printf("%d\n", pop(&top));
    printf("%d\n", pop(&top));
    printf("%d\n", pop(&top));
    return 0;
}
