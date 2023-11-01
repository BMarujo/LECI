#include <stdio.h>
#include <stdlib.h>

#define MAX_HEAP_SIZE 100

typedef struct _heap {
    int data[MAX_HEAP_SIZE];
    int size;
} heap;


// Helper function to return parent node
int parent(int i) { return (i - 1) / 2; }

// Helper function to return left child node
int left(int i) { return (2 * i + 1); }

// Helper function to return right child node
int right(int i) { return (2 * i + 2); }


void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
int get_size(heap *h) {
    return h->size;
}
void heapify_up(heap *h, int index) {
    if (index == 0) return;
    int parent_index = (index - 1) / 2;
    if (h->data[index] > h->data[parent_index]) {
        swap(&h->data[index], &h->data[parent_index]);
        heapify_up(h, parent_index);
    }
}

void heapify_down(heap *h, int index) {
    int left_child_index = 2 * index + 1;
    int right_child_index = 2 * index + 2;
    int largest = index;
    if (left_child_index < h->size && h->data[left_child_index] > h->data[largest])
        largest = left_child_index;
    if (right_child_index < h->size && h->data[right_child_index] > h->data[largest])
        largest = right_child_index;
    if (largest != index) {
        swap(&h->data[index], &h->data[largest]);
        heapify_down(h, largest);
    }
}

heap *create_heap() {
    heap *h = (heap*)malloc(sizeof(heap));
    h->size = 0;
    return h;
}

void destroy_heap(heap *h) {
    free(h);
}

int get_max(heap *h) {
    return h->data[0];
}

void insert(heap *h, int item) {
    h->data[h->size++] = item;
    heapify_up(h, h->size - 1);
}

void remove_max(heap *h) {
    h->data[0] = h->data[--h->size];
    heapify_down(h, 0);
}

void build_heap(heap *h, int arr[], int n) {
    int i;
    for (i = 0; i < n; i++) {
        h->data[i] = arr[i];
    }
    h->size = n;
    for (i = (n / 2) - 1; i >= 0; i--) {
        heapify_down(h, i);
    }
}

void remove_item(heap *h, int item) {
  int i;
  // Find the index of the item to be removed
  for (i = 0; i < h->size; i++) {
    if (h->data[i] == item) break;
  }
  if (i == h->size) return;  // Item not found
  
  // Replace the item to be removed with the last item in the heap
  h->data[i] = h->data[--h->size];
  
  // Maintain the max-heap property by calling heapify_up or heapify_down
  int parent_index = (i - 1) / 2;
  if (h->data[i] > h->data[parent_index])
    heapify_up(h, i);
  else
    heapify_down(h, i);
}

int main() {
    heap *c = create_heap();
    insert(c, 10);
    insert(c, 20);
    insert(c, 30);
    printf("Max: %d\n", get_max(c));
    remove_max(c);
    printf("Max: %d\n", get_max(c));
    remove_item(c,20);
    printf("Max: %d\n", get_max(c));
    heap *h = create_heap();
    insert(h, 10);
    insert(h, 20);
    insert(h, 30);
    insert(h, 230);
    insert(h, 20);
    insert(h, 33);
    insert(h, 17);
    for(int x=0; x<get_size(h);x++){
    printf("%d\n",h->data[x]);}
    destroy_heap(h);
    return 0;
}
