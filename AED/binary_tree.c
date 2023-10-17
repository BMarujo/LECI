#include <stdio.h>
#include <stdlib.h>

struct node {
    int data;
    struct node *left;
    struct node *right;
};

struct node *newNode(int data) {
    struct node *temp = (struct node *)malloc(sizeof(struct node));
    temp->data = data;
    temp->left = temp->right = NULL;
    return temp;
}

struct node *search(struct node *root, int data) {
    if (root == NULL || root->data == data)
        return root;
    if (root->data < data)
        return search(root->right, data);
    return search(root->left, data);
}

struct node *insert(struct node *node, int data) {
    if (node == NULL)
        return newNode(data);
    if (data < node->data)
        node->left = insert(node->left, data);
    else if (data > node->data)
        node->right = insert(node->right, data);
    return node;
}

struct node *findMinNode(struct node *node) {
    struct node *current = node;
    while (current && current->left != NULL)
        current = current->left;
    return current;
}

struct node *deleteNode(struct node *root, int data) {
    if (root == NULL)
        return root;
    if (data < root->data)
        root->left = deleteNode(root->left, data);
    else if (data > root->data)
        root->right = deleteNode(root->right, data);
    else {
        if (root->left == NULL) {
            struct node *temp = root->right;
            free(root);
            return temp;
        } else if (root->right == NULL) {
            struct node *temp = root->left;
            free(root);
            return temp;
        }
        struct node *temp = findMinNode(root->right);
        root->data = temp->data;
        root->right = deleteNode(root->right, temp->data);
    }
    return root;
}

void inorder_traversal(struct node *root) {
    if (root != NULL) {
        inorder_traversal(root->left);
        printf("%d ", root->data);
        inorder_traversal(root->right);
    }
}
int recursive_breadth_first(struct node *link, int desired_depth)
{
    int found = 0;

    if (link == NULL)
        return found;
    if (desired_depth == 0)
    {
        printf("%d ", link->data);
        found = 1;
    }
    found += recursive_breadth_first(link->left, desired_depth - 1);
    found += recursive_breadth_first(link->right, desired_depth - 1);

    return found;
}
void breadth_first(struct node *root)
{
    for (int desired_depth = 0;; desired_depth++)
    {
        if (!recursive_breadth_first(root, desired_depth))
        break;
    }
}


int main() {
    struct node *root = NULL;
    root = insert(root, 50);
    root = insert(root, 30);
    root = insert(root, 20);
    root = insert(root, 40);
    root = insert(root, 70);
    root = insert(root, 60);
    root = insert(root, 80);
    printf("\nIn-order traversal of the modified tree \n");
    inorder_traversal(root);
    printf("\nBreadth-first traversal of the given tree \n");
    breadth_first(root);
    return 0;
}
