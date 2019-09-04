#include <iostream>
#include <assert.h>

using namespace std;

class Quadratic
{
public:
    void queryCoefficient();
    void evaluateExpression();
    void numOfRealZeros();
    void findRealZeros();
    
    Quadratic(int n1, int n2, int n3)
    {
        a = n1;
        b = n2;
        c = n3;
        
        cout << a << "x^2+" << b << "x+" << c << "\n";
    }
    Quadratic()
    {
        a = 1;
        b = 1;
        c = 1;
        
        cout << a << "x^2+" << b << "x+" << c << "\n";
    }

private:
    int a, b, c;
};

void Quadratic::queryCoefficient()
{
    cout << "a = " << a << "\nb = " << b << "\nc = " << c << "\n";
}

void Quadratic::evaluateExpression()
{
    
}

void Quadratic::numOfRealZeros()
{
    
}

void Quadratic::findRealZeros()
{
    
}

int main() {
    
    int num1 = 2;
    int num2 = 4;
    int num3 = 8;
    
    Quadratic q1 (num1, num2, num3);
    
    q1.queryCoefficient();
    q1.evaluateExpression();
    q1.numOfRealZeros();
    q1.findRealZeros();
    
}