//1) Write a function that produces the following
//output:
//	This was written by call number 1.
//		This was written by call number 2.
//			This was written by call number 3.
//				This was written by call number 4.
//				This ALSO written by call number 4.
//			This ALSO written by call number 3.
//		This ALSO written by call number 2.
//	This ALSO written by call number 1.
//In this example, the recursion stopped when it
//reached four levels deep, but your function should
//be capable of continuing to any specified level
//
//5) Write a recursive function called sumover
//that has one argument n, which is an
//unsigned integer. The function returns a
//double value, which is the sum of the reciprocals of
//the first n positive integers. (The reciprocal of x is
//the fraction 1/x.) For example, sumover(1) returns
//1.0 (which is 1/1); sumover(2) returns 1.5 (which
//is 1/1 + 1/2); sumover(3) returns approximately
//1.833 (which is 1/1 + 1/2 + 1/3). Define
//sumover(0) to be zero. Do not use any local variables in your function.

#include <iostream>
#include <cassert>

using namespace std;

void recursive_print(int lvl)
{
    assert (lvl > 0);
    cout << "This was written by call number " << lvl << ".\n";
    if (lvl > 1)
    {
        recursive_print(lvl-1);
    }
    cout << "This ALSO written by call number " << lvl << ".\n";
}

double sumOver(double n)
{
    assert (n >= 0);
    
    double sum = 0;
    if (n == 0)
        return 0;
    else if (n > 1)
    {
        
    }
}

int main()
{
    int levels;
    double num;
    
    cout << "Enter the how deep the first recursive function should go: ";
    cin >> levels;
    
    recursive_print(levels);
    
    cout << "\nEnter the positive number you want to find the sum of reciprocals: ";
    cin >> num;
    
    cout << sumOver(num) << endl;
}