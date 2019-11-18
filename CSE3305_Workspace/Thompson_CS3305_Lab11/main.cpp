/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         11
 */


#include <string>
#include <list>
#include "bst.h"
#include "bintree.h"
using namespace std;

template <class T>
list<T> to_list (binary_search_tree<T> tree)
{
    list<T> new_list;
    binary_tree_node<T>* root = tree.get_root();
    
    process(root, new_list);
    
    return new_list;
}

template<class T>
void process(binary_tree_node<T>* root, list<T>& new_list)
{
    if(root!= NULL)
    {
        process(root->left(), new_list);
        new_list.push_back(root->data());
        process(root->right(), new_list);
    }
}

template<class T>
void print_list (list<T> new_list)
{
    cout << "{";
    while (!new_list.empty())
    {
        cout << new_list.front();
        new_list.pop_front();
        if(!new_list.empty())
        {
            cout << ", ";
        }
    }
    cout << "}" << endl;
}

int rnd() {
    return rand() % 10000;
}

int main() {
    
    binary_search_tree <int> tree;
    for(int i = 1; i < 11; ++i)
    {
        tree.insert(i);
    }
    
    list<int> new_list;
    new_list = to_list(tree);
    print(tree.get_root(), 0);
    print_list(new_list);
    cout << endl;
    
    
    binary_search_tree<string> bst;
    cout << bst << endl;
    bst.insert("baker");
    cout << bst << endl;

    // making sure the output operator was working properly.
    bst.get_root()->set_left(new binary_tree_node<string>("able"));
    cout << bst << endl;
    bst.get_root()->set_right(new binary_tree_node<string>("charlie"));
    cout << bst << endl;
    bst.insert("arthur");
    
    list<string> new_list2;
    new_list2 = to_list(bst);
    print(bst.get_root(), 0);
    print_list(new_list2);
    cout << endl;
}