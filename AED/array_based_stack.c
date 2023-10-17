#include <stdio.h>
#include <stdbool.h>

#define CAPACITY 10

typedef struct _stack 
{
    int array[CAPACITY];
    int top;
} stack;

void push(stack *s, int item) 
{
    if (s->top == CAPACITY - 1) {
        printf("Stack Overflow\n");
        return;
    }
    s->array[++s->top] = item;
}

int pop(stack *s) 
{
    if (s->top == -1) {
        printf("Stack Underflow\n");
        return -1;
    }
    return s->array[s->top--];
}

bool is_empty(stack *s) 
{
    return s->top == -1;
}

int main() 
{
    stack s;
    s.top = -1;
    push(&s, 1);
    push(&s, 2);
    push(&s, 3);
    printf("%d\n", pop(&s));
    printf("%d\n", pop(&s));
    printf("%d\n", pop(&s));
    printf("%d\n", pop(&s));
    return 0;
}
