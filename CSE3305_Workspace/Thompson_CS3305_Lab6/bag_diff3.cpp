/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         6
 */
//
//
//  test -= and - on bag
/*
    This program will print informative messages if something goes wrong
    in either creating and filling bags or in getting the diffference
    between bags.

    If all goes well, only the final message prints.

*/

#include "bag3.h"
#include "check_lists.h"
#include "node1.h"
#include <iostream>

using namespace std;
using namespace main_savitch_5;

void list_print(node* head_ptr)
{
    node* cursor;
    cursor = head_ptr;
    while(cursor->link() != NULL)
    {
        cout << cursor->data() << " ";
        cursor = cursor->link();
    }
    cout << cursor->data() << endl;
}

int main() {
    int size = 5;
    // how many of each value to put in each bag
    // one 0 will be put in b1
    // two 1's will be put in b1
    // five 0's will be in b2 ...
    int num1[] = {1, 2, 3, 4, 5};
    int num2[] = {5, 4, 3, 2, 1};
    bag b1;
    bag b2;
    // insert data into bags
    for(int i = 0; i < size; i++ ) {
        for(int j = 0; j < num1[i]; j++) {
            b1.insert(i);
        }
        for(int j = 0; j < num2[i]; j++ ) {
            b2.insert(i);
        }
    }
    for(int i = 0; i < size; i++ ) {
        if(num1[i] != b1.count(i)) {
            cout <<  "value  " << i << " has bad count in b1: "
                << b1.count(i) << " rather than " << num1[i] << endl;
        }
        if(num2[i] != b2.count(i)) {
            cout <<  "value  " << i << " has bad count in b2: "
            << b2.count(i) << " rather than " << num2[i] << endl;
        }
    }
    bag b3 = b1 - b2;
    for(int i = 0; i < size; i++ ) {
        int d = num1[i] - num2[i];
        d = (d >= 0) ? d : 0;
        if(b3.count(i) != d) {
            cout <<  "value  " << i << " has bad count in b3: "
            << b3.count(i) << " rather than " << d << endl;
        }
    }

    b1 -= b1;
    for(int i = 0; i < size; i++ ) {
        if(0 != b1.count(i)) {
            cout <<  "value  " << i << " has bad count in b1: "
            << b1.count(i) << " rather than " << 0 << endl;
        }
    }


    cout << "no news is good news!" << endl;
    
    //Part 2 implementation
    double num3[] = {12.9, 89.8, 67.7, 45.6, 23.5};
    double num4[] = {45.6, 67.7, -123.5, 89.8, 12.9};
    
    node* head1 = new node(num3[0]);
    node* tail1 = head1;

    for(int i = 1; i < size; i++)
    {
        list_insert(tail1, num3[i]);
        tail1 = tail1->link();
    }
    list_print(head1);
    check_list1(head1);
    
    node* head2 = new node(23.5);
    node* tail2 = head2;
    for(int i = 0; i < size; i++)
    {
        list_insert(tail2, num4[i]);
        tail2 = tail2->link();
    }
    list_print(head2);
    check_list2(head2);
    
    node* head3;
    node* tail3;
    list_copy(head1, head3, tail3);
    list_print(head3);
    check_list1(head3);
    list_print(tail3);
    
    list_head_remove(head2);
    list_print(head2);
    check_list2B(head2);
    
    list_remove(list_locate(head2, 2));
    list_print(head2);
    check_list2C(head2);
}

