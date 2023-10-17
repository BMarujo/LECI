#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SIZE 20

typedef struct _trie {
    char university[SIZE];
    struct _trie* paths[10];
} trie;

trie* createNode() {
    trie* newNode = (trie*)malloc(sizeof(trie));
    memset(newNode->university, 0, SIZE);
    for (int i = 0; i < 10; i++) {
        newNode->paths[i] = NULL;
    }
    return newNode;
}

void insert(trie* head, int universityNumber, char* university) {
    trie* curr = head;
    for (int i = 0; i < 4; i++) {
        int index = universityNumber % 10;
        universityNumber /= 10;
        if (curr->paths[index] == NULL) {
            curr->paths[index] = createNode();
        }
        curr = curr->paths[index];
    }
    strcpy(curr->university, university);
}

int search(trie* head, int universityNumber) {
    trie* curr = head;
    for (int i = 0; i < 4; i++) {
        int index = universityNumber % 10;
        universityNumber /= 10;
        if (curr->paths[index] == NULL) {
            return 0;
        }
        curr = curr->paths[index];
    }
    return strlen(curr->university) != 0;
}
trie* search_return_node(trie* head, int universityNumber) {
    trie* curr = head;
    for (int i = 0; i < 4; i++) {
        int index = universityNumber % 10;
        universityNumber /= 10;
        if (curr->paths[index] == NULL) {
            return NULL;
        }
        curr = curr->paths[index];
    }
    return curr;
}

int main() {
    trie* head = createNode();
    insert(head, 1234, "Harvest University");
    insert(head, 5678, "Harvest Institute");
    insert(head, 9012, "Harvest College");
    insert(head, 119012234, "Harvestddd College");
    printf("%d\n", search(head, 1234)); // 1
    printf("%d\n", search(head, 5678)); // 1
    printf("%d\n", search(head, 9012)); // 1
    printf("%d\n", search(head, 1235)); // 0
    trie* xyz = search_return_node(head, 119012234);
    printf("%s\n",xyz->university);
    return 0;
}
