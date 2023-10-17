#include <stdio.h>

// Binary Search only works with a sorted array
// Returns the index of the target value if found, or -1 otherwise
int binarySearch(int arr[], int low, int high, int target) {
    if (high >= low) {
        int mid = low + (high - low) / 2;
        
        // If the target is at the middle, return its index
        if (arr[mid] == target) {
            return mid;
        }
        
        // If the target is smaller than the middle, search the left half
        if (arr[mid] > target) {
            return binarySearch(arr, low, mid - 1, target);
        }
        
        // If the target is larger than the middle, search the right half
        return binarySearch(arr, mid + 1, high, target);
    }
    
    // Target not found
    return -1;
}

int main(void) {
    int arr[] = {1, 2, 3, 4, 5};
    int target = 5;
    int target2 = 56;
    int n = sizeof(arr) / sizeof(arr[0]);
    int result = binarySearch(arr, 0, n - 1, target);
    
    if (result == -1) {
        printf("Target not found\n");
    } else {
        printf("Target found at index %d\n", result);
    }

    int result2 = binarySearch(arr, 0, n - 1, target2);
    
    if (result2 == -1) {
        printf("Target not found\n");
    } else {
        printf("Target found at index %d\n", result2);
    }

    return 0;
}
