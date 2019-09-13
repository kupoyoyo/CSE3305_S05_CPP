#include <iostream>
#include "set.h"

using namespace std;
using namespace thompsonLab3;

int main(int argc, char **argv)
{
    set s(5);
    //cout << "class 1 created(main)\n";
    s.insert (7);
    //cout << "insert 7(main)\n";
    std::cout << s << std::endl;
    //cout << "1st print\n";
    s.insert (8);
    std::cout << s << std::endl;
    s.insert(3);
    std::cout << s << std::endl;
    s.insert (2);
    s.insert (1);
    s.insert (22);
    std::cout << s << std::endl;
    set s1(s);
    std::cout << s1 << std::endl;
    set s2 (78);
    s2 = s;
    std::cout << s2 << std::endl;
 }