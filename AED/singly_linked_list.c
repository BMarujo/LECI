#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// definition of a node
typedef struct sllist{
    int data;
    struct sllist* next;
}sllnode;

//creation of a node
sllnode* create(int data) {
    sllnode* newNode = (sllnode*) malloc(sizeof(sllnode));
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

//inserts a node in an existing linked-list at the beginning
void insert(sllnode** head, int data) {
    sllnode* newNode = (sllnode*)malloc(sizeof(sllnode));
    newNode->data = data;
    newNode->next = *head;
    *head = newNode;
}

//check if a node exists in the linked-list
bool find(sllnode* head, int data) {
    sllnode* current = head;
    while (current != NULL) {
        if (current->data == data) {
            return true;
        }
        current = current->next;
    }
    return false;
}

//delete a linked-list
void destroy(sllnode* head) {
    sllnode* current = head;
    sllnode* nextNode;
    while(current != NULL) {
        nextNode = current->next;
        free(current);
        current = nextNode;
    }
    head = NULL;
}

//this is how we connect multiple nodes into a linked-list in the main function
int main (){
    //from here
    sllnode* head = NULL;
    head = create(10);
    sllnode* second = create(20);
    head->next = second;
    //till here
    insert(&head, 30);
    if(find(head, 10)){
        printf("%d\n",head->data);
    }
    return 0;
}


/*
sllnode* head;

void createList(int n);
void displayList();

int main()
{
    int n;
    printf("Enter the total number of nodes: ");
    scanf("%d", &n);
    createList(n);
    printf("\nData in the list :\n");
    displayList();
    return 0;
}

void createList(int n)
{
    sllnode *newNode, *temp;
    int data, i;
    head = (sllnode *)malloc(sizeof(sllnode));
    if(head == NULL)
    {
        printf("Unable to allocate memory.");
    }
    else
    {
        printf("Enter the data of node 1: ");
        scanf("%d", &data);
        head->data = data;
        head->next = NULL;
        temp = head;
        for(i=2; i<=n; i++)
        {
            newNode = (sllnode *)malloc(sizeof(sllnode));
            if(newNode == NULL)
            {
                printf("Unable to allocate memory.");
                break;
            }
            else
            {
                printf("Enter the data of node %d: ", i);
                scanf("%d", &data);
                newNode->data = data;
                newNode->next = NULL;
                temp->next = newNode;
                temp = temp->next;
            }
        }
    }
}

void displayList()
{
    sllnode *temp;
    if(head == NULL)
    {
        printf("List is empty.");
    }
    else
    {
        temp = head;
        while(temp != NULL)
        {
            printf("Data = %d\n", temp->data);
            temp = temp->next;
        }
    }
}
*/