#include <stdio.h>
#include <stdlib.h>

//main search algorithm from here
typedef struct _Node {
    int data;
    struct _Node* left;
    struct _Node* right;
}Node;

Node* search(Node* root, int target) {
    if (root == NULL || root->data == target) {
        return root;
    }
    if (target < root->data) {
        return search(root->left, target);
    } else {
        return search(root->right, target);
    }
}
//till here


Node* newNode(int data) {
    Node* node = (Node*) malloc(sizeof(Node));
    node->data = data;
    node->left = NULL;
    node->right = NULL;
    return node;
}

Node* insert(Node* node, int data) {
    if (node == NULL) return newNode(data);

    if (data < node->data) {
        node->left = insert(node->left, data);
    } else if (data > node->data) {
        node->right = insert(node->right, data);
    }

    return node;
}

int main() {
    Node* root = NULL;
    root = insert(root, 50);
    insert(root, 30);
    insert(root, 20);
    insert(root, 40);
    insert(root, 70);
    insert(root, 60);
    insert(root, 80);

    Node* result = search(root, 90);
    if (result == NULL) {
        printf("Data not found\n");
    } else {
        printf("Data found\n");
    }
    return 0;
}
