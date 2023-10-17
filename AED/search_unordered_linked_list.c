#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int data;
    struct Node *next;
}Node;

//this funtion returns the index of the node note:the index starts at 0
int search_index_node(Node *head, int x) {
    int index = 0;
    Node *current = head;
    while (current != NULL) {
        if (current->data == x) {
            return index;
        }
        current = current->next;
        index++;
    }
    return -1;
}

//this funtion returns the node itself
Node *search_node(Node *head,int value)
{
while(head != NULL && head->data != value)
head = head->next;
return head;
}



int main() {
    Node *head = NULL;
    Node *second = NULL;
    Node *third = NULL;

    head = (Node*)malloc(sizeof(Node));
    second = (Node*)malloc(sizeof(Node));
    third = (Node*)malloc(sizeof(Node));

    head->data = 1;
    head->next = second;

    second->data = 2;
    second->next = third;

    third->data = 3;
    third->next = NULL;

    int x = 2;
    int result = search_index_node(head, x);
    (result == -1) ? printf("Element is not present in linked list\n") : printf("Element is present at index %d\n", result);
    Node *w = search_node(head,2);
    printf("%d\n",w->data);
    return 0;
}
