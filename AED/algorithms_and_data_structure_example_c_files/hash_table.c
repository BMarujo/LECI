#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define HASH_TABLE_SIZE 100

typedef struct node {
    char* key;
    int value;
    struct node* next;
} node;

node* hash_table[HASH_TABLE_SIZE];
char* keys[HASH_TABLE_SIZE];

int hash(char* key) {
    int sum = 0;
    int i;
    for (i = 0; i < strlen(key); i++) {
        sum += key[i];
    }
    return sum % HASH_TABLE_SIZE;
}

void insert(char* key, int value) {
    int index = hash(key);
    node* new_node = (node*)malloc(sizeof(node));
    new_node->key = key;
    new_node->value = value;
    new_node->next = hash_table[index];
    hash_table[index] = new_node;
    keys[value] = key;
}

char* retrieve_key_by_value(int value) {
    return keys[value];
}

int retrieve(char* key) {
    int index = hash(key);
    node* current = hash_table[index];
    while (current != NULL) {
        if (strcmp(current->key, key) == 0) {
            return current->value;
        }
        current = current->next;
    }
    return -1;
}

int main(void) {
    insert("key1", 10);
    insert("key2", 20);
    insert("key3", 30);
    insert("key200", 200);
    insert("key399", 399);
    printf("%s\n", retrieve_key_by_value(10));
    printf("%s\n", retrieve_key_by_value(20));
    printf("%s\n", retrieve_key_by_value(30));
    printf("%s\n", retrieve_key_by_value(399));
    printf("size %ld\n", sizeof(hash_table));
    printf("size %ld\n", sizeof(keys));
    printf("size %ld\n", sizeof(*hash_table));
    printf("size %ld\n", sizeof(*keys));
    printf("size %ld\n", sizeof(hash_table[0]));
    printf("size %ld\n", sizeof(keys[0]));
    printf("%d\n", retrieve("key1"));
    printf("%d\n", retrieve("key2"));
    printf("%d\n", retrieve("key3"));
    return 0;
}
