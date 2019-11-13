#include <iostream>
#include "deque.h"

using namespace std;
using namespace main_savitch_6B;

int main()
{
    deque<int> dq1;
    
    dq1.push_front(30);
    dq1.push_front(10);
    cout << dq1;
}