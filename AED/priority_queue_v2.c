#include <stdio.h>
#include <stdlib.h>

// Define the maximum size of the heap
#define MAX_HEAP_SIZE 100

// Structure for a node in the heap
typedef struct node {
  int data;
} Node;

// Structure for the priority queue (heap)
typedef struct priority_queue {
  Node heap[MAX_HEAP_SIZE];
  int size;
} PriorityQueue;

// Function to create a new priority queue
PriorityQueue* create_priority_queue() {
  PriorityQueue *pq = (PriorityQueue*)malloc(sizeof(PriorityQueue));
  pq->size = 0;
  return pq;
}

// Function to destroy a priority queue
void destroy_priority_queue(PriorityQueue *pq) {
  free(pq);
}

// Function to swap two nodes in the heap
void swap(Node *n1, Node *n2) {
  Node temp = *n1;
  *n1 = *n2;
  *n2 = temp;
}

// Function to get the parent of a node in the heap
int parent(int i) {
  return (i - 1) / 2;
}

// Function to get the left child of a node in the heap
int left(int i) {
  return (2 * i) + 1;
}

// Function to get the right child of a node in the heap
int right(int i) {
  return (2 * i) + 2;
}

// Function to maintain the max-heap property
void max_heapify(PriorityQueue *pq, int i) {
  int largest = i;
  int l = left(i);
  int r = right(i);
  if (l < pq->size && pq->heap[l].data > pq->heap[i].data) {
    largest = l;
  }
  if (r < pq->size && pq->heap[r].data > pq->heap[largest].data) {
    largest = r;
  }
  if (largest != i) {
    swap(&pq->heap[i], &pq->heap[largest]);
    max_heapify(pq, largest);
  }
}

// Function to return the largest data item (peek)
int peek(PriorityQueue *pq) {
  return pq->heap[0].data;
}

// Function to insert a data item (enqueue)
void enqueue(PriorityQueue *pq, int data) {
    if (pq->size == MAX_HEAP_SIZE) {
    printf("Error: Priority queue is full.\n");
    return;
    }
    pq->size++;
    int i = pq->size - 1;
    pq->heap[i].data = data;
    while (i != 0 && pq->heap[parent(i)].data < pq->heap[i].data) {
    swap(&pq->heap[i], &pq->heap[parent(i)]);
    i = parent(i);
    }
}

// Function to remove the largest data item (dequeue)
int dequeue(PriorityQueue *pq) {
    if (pq->size == 0) {
    printf("Error: Priority queue is empty.\n");
    return -1;
    }
    int max = pq->heap[0].data;
    pq->heap[0] = pq->heap[pq->size - 1];
    pq->size--;
    max_heapify(pq, 0);
    return max;
}
// Function to maintain the max-heap property while inserting a new data item
void heap_increase_key(PriorityQueue *pq, int i, int data) {
    if (data < pq->heap[i].data) {
    printf("Error: New data is smaller than current data.\n");
    return;
    }
    pq->heap[i].data = data;
    while (i != 0 && pq->heap[parent(i)].data < pq->heap[i].data) {
    swap(&pq->heap[i], &pq->heap[parent(i)]);
    i = parent(i);
    }
}

int main() {
    PriorityQueue *pq = create_priority_queue();
    enqueue(pq, 10);
    enqueue(pq, 20);
    enqueue(pq, 15);
    printf("Peek: %d\n", peek(pq));
    printf("Dequeue: %d\n", dequeue(pq));
    printf("Peek: %d\n", peek(pq));
    destroy_priority_queue(pq);
    return 0;
}