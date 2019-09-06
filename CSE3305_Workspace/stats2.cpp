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
    //cout << r << " has been added\n";
}

void statistician :: reset()
{
    count = 0;
    total = 0;
}

int statistician :: length() const
{
    //cout << "The length of the list is: " << count << "\n";
    return count;
}

double statistician :: sum() const
{
    //cout << "The sum of the list is: " << total << "\n";
    return total;
}

double statistician :: mean() const
//Library facilities used: cassert
{
    assert (length() > 0);
    //cout << "The mean is: " << total/count << "\n";
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

statistician operator + (const statistician& s1, const statistician& s2)
{
    statistician s3;
    if (s1.count == 0)
        return s2;
    else if (s2.count == 0)
        return s1;
    else
    {
        s3.count = s1.count + s2.count;
        s3.total = s1.total + s2.total;
        s3.tinyest = (s1.tinyest < s2.tinyest) ? s1.tinyest : s2.tinyest;
        s3.largest = (s1.largest > s2.largest) ? s1.largest : s2.largest;
        return s3;
    }

}

statistician operator * (double scale, const statistician& s)
{
    statistician s3;
    if (s.count == 0)
        return s;
    else
    {
        s3.count = s.count;
        s3.total = s.total * scale;
        if (scale < 0)
        {
            s3.tinyest = s.largest * scale;
            s3.largest = s.tinyest * scale;
        }
        else
        {
            s3.tinyest = s.tinyest * scale;
            s3.largest = s.largest * scale;
        }
        return s3;
    }
}

bool operator == (const statistician& s1, const statistician& s2)
{
    if (s1.length() == 0 && s2.length() == 0)
        return true;
    else if (s1.length() == s2.length())
    {
        if (s1.sum() == s2.sum())
        {
            if (s1.mean() == s2.mean())
            {
                if (s1.minimum() == s2.minimum())
                {
                    if(s1.maximum() == s2.maximum())
                        return true;
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
    else
        return false;
}