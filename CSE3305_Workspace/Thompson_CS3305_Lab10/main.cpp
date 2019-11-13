/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         10
 */

#include "bintree.h"
#include "build_tree.h"
#include <iostream>
using namespace std;

template <class T>
void printItem(T item)
{
    cout<<item<<" ";
}

template <class T>
int depth(binary_tree_node<T> *root)
{
    if (root == NULL)
        return -1;
    int leftdepth = 1 + depth(root -> left());
    int rightdepth = 1 + depth(root -> right());
    
    if(leftdepth > rightdepth)
        return leftdepth;
    else
        return rightdepth;
}

template <class T>
T max(binary_tree_node<T> *root)
{
    assert (root != NULL);
    T leftlargest = NULL;
    T rightlargest = NULL;
    T rootvalue = root -> data();
    
    if (root -> left() != NULL)
        leftlargest = max(root -> left());
    if (root -> right () != NULL)
        rightlargest = max(root -> right());
    
    if (rightlargest > rootvalue && rightlargest > leftlargest)
        return rightlargest;
    else if (leftlargest > rootvalue && leftlargest > rightlargest)
        return leftlargest;
    else
        return rootvalue;
}

double tree_sum(binary_tree_node<double> *root)
{
    if (root == NULL)
        return 0;
    double node_value = root -> data();
    return (node_value + tree_sum(root -> left()) + tree_sum(root -> right()));
}

double tree_average(binary_tree_node<double> *root)
{
    if (root == NULL)
        return 0;
    return (tree_sum(root) / tree_size(root));
}

template <class T>
bool tree_is_balanced(binary_tree_node<T> *root)
{
    if (root == NULL)
        return true;
    else if (tree_is_balanced(root -> left()) != tree_is_balanced(root -> right()))
        return false;
    else if (abs(depth(root -> left()) - depth(root -> right())) > 1)
        return false;
    else
        return true;
}

int main() {
    binary_tree_node<int> *s1 = sample1();
    //print(s1, 0);
    cout<<endl;    
    
    inorder(printItem<int>, s1);
    cout<<endl;    
        
    preorder(printItem<int>, s1);
    cout<<endl;    
        
    postorder(printItem<int>, s1);
    cout<<endl;

    cout << "size of s1: " << tree_size(s1) << endl;
    cout << "depth of s1: " << depth(s1) << endl;
    cout << "max of s1: " << max(s1) << endl;
    cout << "s1 is balanced? " << tree_is_balanced(s1) << endl;
    
    binary_tree_node<int> *s2 = sample2();
    //print(s2, 0);
    cout<<endl;
    
    inorder(printItem<int>, s2);
    cout<<endl;    
        
    preorder(printItem<int>, s2);
    cout<<endl;    
        
    postorder(printItem<int>, s2);
    cout<<endl;
    
    cout << "size of s2: " << tree_size(s2) << endl;
    cout << "depth of s2: " << depth(s2) << endl;
    cout << "max of s2: " << max(s2) << endl;
    cout << "s2 is balanced? " << tree_is_balanced(s2) << endl;
    
    binary_tree_node<double> *s3 =sample3();
    //print(s3, 0);
    cout<<endl;
    
    cout << "size of s3: " << tree_size(s3) << endl;
    cout << "depth of s3: " << depth(s3) << endl;
    cout << "max of s3: " << max(s3) << endl;    
    cout << "sum of s3: " << tree_sum(s3) << endl;
    cout << "average of s3: " << tree_average(s3) << endl;
    cout << "s3 is balanced? " << tree_is_balanced(s3) << endl;
    
    
    binary_tree_node<double> *s4 =sample4();
    //print(s4, 0);
    cout<<endl;

    cout << "size of s4: " << tree_size(s4) << endl;
    cout << "depth of s4: " << depth(s4) << endl;
    cout << "max of s4: " << max(s4) << endl;    
    cout << "sum of s4: " << tree_sum(s4) << endl;
    cout << "average of s4: " << tree_average(s4) << endl;
    cout << "s4 is balanced? " << tree_is_balanced(s4) << endl;

    binary_tree_node<string> *s5 = sample5();
    //print(s5, 0);
    cout<<endl;
    
    cout << "size of s5: " << tree_size(s5) << endl;
    cout << "depth of s5: " << depth(s5) << endl;
    //cout << "max of s5: " << max(s5) << endl;    
    //cout << "sum of s5: " << tree_sum(s5) << endl;
    //cout << "average of s5: " << tree_average(s5) << endl;
    cout << "s5 is balanced? " << tree_is_balanced(s5) << endl;
     
    binary_tree_node<double> *s6 =sample_bal1();
    //print(s6, 0);
    cout<<endl;
    
    cout << "size of s6: " << tree_size(s6) << endl;
    cout << "depth of s6: " << depth(s6) << endl;
    cout << "max of s6: " << max(s6) << endl;    
    cout << "sum of s6: " << tree_sum(s6) << endl;
    cout << "average of s6: " << tree_average(s6) << endl;
    cout << "s6 is balanced? " << tree_is_balanced(s6) << endl;
    
    binary_tree_node<double> *s7 =sample_bal2();
    //print(s7, 0);
    cout<<endl;
    
    cout << "size of s7: " << tree_size(s7) << endl;
    cout << "depth of s7: " << depth(s7) << endl;
    cout << "max of s7: " << max(s7) << endl;    
    cout << "sum of s7: " << tree_sum(s7) << endl;
    cout << "average of s7: " << tree_average(s7) << endl;
    cout << "s7 is balanced? " << tree_is_balanced(s7) << endl;


}
