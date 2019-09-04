/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         1
 */

#include <iostream>
#include <assert.h>
#include "stats.h"

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

