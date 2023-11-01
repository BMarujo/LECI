#include <stdio.h>
#include <stdlib.h>

#define MAX_HEAP_SIZE 100

struct MaxHeap {
    int size;
    int data[MAX_HEAP_SIZE];
};

// Returns the index of the parent of a given index
int parent(int i) {
    return (i - 1) / 2;
}

// Returns the index of the left child of a given index
int left(int i) {
    return 2 * i + 1;
}

// Returns the index of the right child of a given index
int right(int i) {
    return 2 * i + 2;
}

// Recursive function to maintain the max-heap property by swapping data if necessary
void maxHeapify(struct MaxHeap* heap, int i) {
    int largest = i;
    int l = left(i);
    int r = right(i);
    
    if (l < heap->size && heap->data[l] > heap->data[largest]) {
        largest = l;
    }
    if (r < heap->size && heap->data[r] > heap->data[largest]) {
        largest = r;
    }
    if (largest != i) {
        int temp = heap->data[i];
        heap->data[i] = heap->data[largest];
        heap->data[largest] = temp;
        maxHeapify(heap, largest);
    }
}

// Initializes the max-heap
void buildMaxHeap(struct MaxHeap* heap) {
    int i;
    for (i = (heap->size - 1) / 2; i >= 0; i--) {
        maxHeapify(heap, i);
    }
}

// Returns the largest item in the priority queue (the root node of the max-heap)
int peek(struct MaxHeap* heap) {
    return heap->data[0];
}

// Inserts a new item into the priority queue
void enqueue(struct MaxHeap* heap, int item) {
    int i = heap->size;
    heap->data[i] = item;
    heap->size++;
    
    while (i > 0 && heap->data[parent(i)] < heap->data[i]) {
        int temp = heap->data[i];
        heap->data[i] = heap->data[parent(i)];
        heap->data[parent(i)] = temp;
        i = parent(i);
    }
}

// Removes the largest item from the priority queue
void dequeue(struct MaxHeap* heap) {
    heap->data[0] = heap->data[heap->size - 1];
    heap->size--;
    maxHeapify(heap, 0);
}

int main(int argc, char** argv) {
    struct MaxHeap heap = {0};
    enqueue(&heap, 10);
    enqueue(&heap, 20);
    enqueue(&heap, 15);
    printf("Largest item: %d\n", peek(&heap)); // Output: 20
    dequeue(&heap);
    printf("Largest item: %d\n", peek(&heap)); // Output: 15
    enqueue(&heap, 30);
    printf("Largest item: %d\n", peek(&heap)); // Output: 30

    return 0;
}
