#include <stdio.h>
//this is the funtion to search, n is the size of the array, x is the value you are looking for
int search(int arr[], int n, int x) {
    int i;
    for (i = 0; i < n; i++) {
        if (arr[i] == x) {
            return i;
        }
    }
    return -1;
}
//the goal is the same as search()
int search2(int *data,int data_size,int value)
{
    int i;
    for(i = 0;i < data_size && data[i] != value;i++)
    ;
    return (i < data_size) ? i : -1;
}


//this funtion optimizes the search but has secondary effects, it changes the index of the values and may lead to incorrect results, in this example it always chenges the index of the value to index-1
int self_optimizing_search(int* data,int data_size,int value)
{
    int i;
    for(i = 0;i < data_size && data[i] != value;i++)
    ;
    if(i > 0 && i < data_size)
    {
        int tmp = data[i];
        data[i] = data[i - 1];
        data[--i] = tmp;
    }
    return (i < data_size) ? i : -1;
}

int main() {
    int arr[] = {4, 2, 9, 6, 23, 12, 34, 0, 1};
    int n = sizeof(arr)/sizeof(arr[0]);
    int x = 34;
    int result = search(arr, n, x);
    (result == -1) ? printf("Element is not present in array\n")
                   : printf("Element is present at index %d\n", result);
    int result2 = self_optimizing_search(arr, n, x);
    (result == -1) ? printf("Element is not present in array\n")
                   : printf("Element is present at index %d\n", result2);
    return 0;
}
