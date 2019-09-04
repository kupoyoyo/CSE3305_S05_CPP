/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         2
 */

#include <iostream>
#include <assert.h>
#include "stats2.h"

using namespace std;

statistician :: statistician()
{
    reset();
}

void statistician :: next(double r)
{
    count++;
    total += r;
    if (r < tinyest || count == 1)
        tinyest = r;
    if (r > largest || count == 1)
        largest = r;
    cout << r << " has been added\n";
}

void statistician :: reset()
{
    count = 0;
    total = 0;
}

int statistician :: length() const
{
    cout << "The length of the list is: " << count << "\n";
    return count;
}

double statistician :: sum() const
{
    cout << "The sum of the list is: " << total << "\n";
    return total;
}

double statistician :: mean() const
//Library facilities used: cassert
{
    assert (length() > 0);
    cout << "The mean is: " << total/count << "\n";
    return total/count;
}

double statistician :: minimum() const
{
    assert (length() > 0);
    return tinyest;
}

double statistician :: maximum() const
{
    assert (length() > 0);
    return largest;
}

friend statistician operator + (const statistician& s1, const statistician& s2)
{
    int countT = s1.count + s2.count;
    double totalT = s1.total + s2.total;
    double tinyestT = s1.tinyest + s2.tinyest;
    double largestT = s1.largest + s2.largest;
}

friend statistician operator * (double scale, const statistician& s)
{
    int countS = s.count * scale;
    double totalS = s.total * scale;
    
}

bool operator == (const statistician& s1, const statistician& s2)
{
    if (s1.count == s2.count)
    {
        if (s1.total == s2.total)
        {
            if (s1.tinyest == s2.tinyest)
            {
                if (s1.largest == s2.largest)
                {
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }
        else
            return false;
    }
    else
        return false;
}