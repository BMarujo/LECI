#include <stdio.h>
#include <stdlib.h>

// Definition of a node
typedef struct dllist {
    int data;
    struct dllist* next;
    struct dllist* prev;
} dllnode;

// Create a new node
dllnode* create(int data) {
    dllnode* newNode = (dllnode*) malloc(sizeof(dllnode));
    newNode->data = data;
    newNode->next = NULL;
    newNode->prev = NULL;
    return newNode;
}

// Insert a new node at the beginning of the list
void insert(dllnode** head, int data) {
    dllnode* newNode = create(data);
    if (*head == NULL) {
        *head = newNode;
    } else {
        newNode->next = *head;
        (*head)->prev = newNode;
        *head = newNode;
    }
}

// Delete a single element from the list
void deleteNode(dllnode** head, int data) {
    dllnode* current = *head;
    while (current != NULL) {
        if (current->data == data) {
            if (current->prev != NULL) {
                current->prev->next = current->next;
            }
            if (current->next != NULL) {
                current->next->prev = current->prev;
            }
            if (current == *head) {
                *head = current->next;
            }
            free(current);
            return;
        }
        current = current->next;
    }
}

// Destroy the entire list
void destroy(dllnode* head) {
    dllnode* current = head;
    dllnode* nextNode;
    while (current != NULL) {
        nextNode = current->next;
        free(current);
        current = nextNode;
    }
    head = NULL;
}

int main() {
    dllnode* head = NULL;
    insert(&head, 10);
    insert(&head, 20);
    insert(&head, 30);
    deleteNode(&head, 30);
    printf("%d\n",head->next->data);
    destroy(head);
    return 0;
}
