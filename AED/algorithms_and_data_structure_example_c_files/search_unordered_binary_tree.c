#include <stddef.h>
#include <stdio.h>

typedef struct Node {
    int data;
    struct Node *left;
    struct Node *right;
} Node;
//this functions to search use depth-first search (DFS) 
//the function first explores the subtree rooted at the left child of the current node, then the subtree rooted at the right child of the current node, and finally the current node
Node* search_binary_tree(Node* root, int value) {
    if (root == NULL) {
        return NULL;
    }
    if (root->data == value) {
        return root;
    }
    Node* left_search = search_binary_tree(root->left, value);
    if (left_search != NULL) {
        return left_search;
    }
    Node* right_search = search_binary_tree(root->right, value);
    if (right_search != NULL) {
        return right_search;
    }
    return NULL;
}

Node *search_binary_tree2(Node *n,int value)
{
    Node *nn;
    if(n == NULL || n->data == value)
        return n;
    if(n->left != NULL && (nn = search_binary_tree2(n->left,value)) != NULL)
        return nn;
    if(n->right != NULL && (nn = search_binary_tree2(n->right,value)) != NULL)
        return nn;
    return NULL;
}


int main() {
    // Define binary tree
    Node n1 = {1, NULL, NULL};
    Node n3 = {3, NULL, NULL};
    Node n2 = {2, &n1, &n3};
    Node n6 = {6, NULL, NULL};
    Node n5 = {5, NULL, &n6};
    Node root = {4, &n2, &n5};

    int value = 3;
    Node* result = search_binary_tree(&root, value);
    if (result != NULL) {
        printf("Found node with value %d\n", result->data);
    } else {
        printf("Node with value %d not found\n", value);
    }
    Node* result2 = search_binary_tree2(&root, value);
    if (result2 != NULL) {
        printf("Found node with value %d\n", result2->data);
    } else {
        printf("Node with value %d not found\n", value);
    }
    return 0;
}
