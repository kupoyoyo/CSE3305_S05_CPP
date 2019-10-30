#include <cassert>
#include <cstdlib>
#include <iostream>
#include "stack_pair.h"
using namespace std;

int main()
{
    //TEST 1
    stack_pair<size_t> s_pair1;
    
    cout << "Creating stack pair 1..." << endl;
    
    s_pair1.push_a(25);
    s_pair1.push_a(400);
    s_pair1.push_a(38);
    s_pair1.push_a(10);
    s_pair1.push_a(68);
    
    s_pair1.push_b(88);
    s_pair1.push_b(72);
    s_pair1.push_b(2);
    s_pair1.push_b(76);
    s_pair1.push_b(250);
    s_pair1.push_b(149);
    s_pair1.push_b(1);
    
    if(s_pair1.is_full_a() == true && s_pair1.is_full_b() == true)
        cout << "Stack pair 1 is full\n";
    else
        cout << "Stack pair 1 is not full\n";
    
    cout << "Stack a (size: "<< s_pair1.size_a() << "): ";
    while(s_pair1.size_a() > 0)
    {
        cout << s_pair1.pop_a() << " ";
    }
    
    cout << "\nStack b (size: "<< s_pair1.size_b() << "): ";
    while(s_pair1.size_b() > 0)
    {
        cout << s_pair1.pop_b() << " ";
    }
    
    //TEST 2
    stack_pair<size_t> s_pair2;
    
    cout << "\n\nCreating stack pair 2..." << endl;

    s_pair2.push_a(25);
    s_pair2.push_a(400);
    s_pair2.push_a(38);
    s_pair2.push_a(10);
    s_pair2.push_a(68);
    s_pair2.push_a(53);
    s_pair2.push_a(122);
    s_pair2.push_a(520);
    s_pair2.push_a(20);
    s_pair2.push_a(10);
    s_pair2.push_a(45);
    s_pair2.push_a(73);
    s_pair2.push_a(29);
    s_pair2.push_a(99);
    s_pair2.push_a(9);
    s_pair2.push_a(222);
    s_pair2.push_a(98);
    s_pair2.push_a(55);

    s_pair2.push_b(88);
    s_pair2.push_b(72);
    s_pair2.push_b(2);
    s_pair2.push_b(76);
    s_pair2.push_b(250);
    s_pair2.push_b(149);
    s_pair2.push_b(1);
    s_pair2.push_b(45);
    s_pair2.push_b(162);
    s_pair2.push_b(12);
    s_pair2.push_b(21);
    s_pair2.push_b(61);

    if(s_pair2.is_full_a() == true && s_pair2.is_full_b() == true)
        cout << "Stack pair 2 is full\n";
    else
        cout << "Stack pair 2 is not full\n";

    cout << "Stack a (size: "<< s_pair2.size_a() << "): ";
    while(s_pair2.size_a() > 0)
    {
        cout << s_pair2.pop_a() << " ";
    }
    
    cout << "\nStack b (size: "<< s_pair2.size_b() << "): ";
    while(s_pair2.size_b() > 0)
    {
        cout << s_pair2.pop_b() << " ";
    }
    
    //TEST 3
    stack_pair<size_t> s_pair3;
    
    cout << "\n\nCreating stack pair 3..." << endl;

    s_pair3.push_a(25);
    s_pair3.push_a(400);
    s_pair3.push_a(38);
    s_pair3.push_a(10);
    s_pair3.push_a(68);
    s_pair3.push_a(53);
    s_pair3.push_a(122);
    s_pair3.push_a(520);
    s_pair3.push_a(20);
    s_pair3.push_a(10);
    s_pair3.push_a(45);
    s_pair3.push_a(73);
    s_pair3.push_a(29);
    s_pair3.push_a(99);
    s_pair3.push_a(9);
    s_pair3.push_a(222);
    s_pair3.push_a(98);
    s_pair3.push_a(55);

    s_pair3.push_b(88);
    s_pair3.push_b(72);
    s_pair3.push_b(2);
    s_pair3.push_b(76);
    s_pair3.push_b(250);
    s_pair3.push_b(149);
    s_pair3.push_b(1);
    s_pair3.push_b(45);
    s_pair3.push_b(162);
    s_pair3.push_b(12);
    s_pair3.push_b(21);
    s_pair3.push_b(61);
    
    if(s_pair3.is_full_b())
        cout << "ERROR: Stack b is full! Cannot push a full stack!\n";
    else
        s_pair3.push_b(25);
    
    if(s_pair3.is_full_a() && s_pair3.is_full_b())
        cout << "Stack pair 3 is full\n";
    else
        cout << "Stack pair 3 is not full\n";

    cout << "Stack a (size: "<< s_pair3.size_a() << "): ";
    while(s_pair3.size_a() > 0)
    {
        cout << s_pair3.pop_a() << " ";
    }
    
    cout << "\nStack b (size: "<< s_pair3.size_b() << "): ";
    while(s_pair3.size_b() > 0)
    {
        cout << s_pair3.pop_b() << " ";
    }
    
    //TEST 4
    stack_pair<size_t> s_pair4;
    
    cout << "\n\nCreating empty stack pair 4..." << endl;

    
    cout << "Stack a (size: "<< s_pair4.size_a() << "): ";
    if (s_pair4.is_empty_a())
        cout << "\nERROR: Stack a is empty! Cannot pop an empty stack!\n";
    else
    {
        while(s_pair4.size_a() >= 0)
        {
            cout << s_pair4.pop_a() << " ";
        }
    }
    
    cout << "\nStack b (size: "<< s_pair4.size_b() << "): ";
    if (s_pair4.is_empty_b())
        cout << "\nERROR: Stack b is empty! Cannot pop an empty stack!\n";
    else
    {
        while(s_pair4.size_b() >= 0)
        {
            cout << s_pair4.pop_b() << " ";
        }
    }
}