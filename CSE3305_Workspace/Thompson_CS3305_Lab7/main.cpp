#include <cstdlib>
#include <iostream>
#include "queue4.h"

using namespace std;
using namespace main_savitch_8C;


int main()
{
    queue<int> qint;

    qint.push(45);
    qint.push(56);
    qint.push(67);
    qint.push(78);
    qint.push(89);
    
    qint.print();

    qint.pop();  // 45
    qint.pop();  // 56
    
    qint.print();
    
    qint.push(10);
    qint.push(21);
    
    qint.print();
    
    qint.pop();  // 67
    qint.pop();  // 78

    qint.print();
    
	return EXIT_SUCCESS;
}
