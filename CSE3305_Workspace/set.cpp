/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         3
 */

#include <cstdlib>
#include <iostream>
#include <algorithm>
#include "set.h"

using namespace std;
namespace thompsonLab3
{
    set :: set(size_type r) //constructor with size r
    {
        used = 0;
        capacity = r;
        data = new value_type [r];
        //cout << "class created\n";
    }

    set :: ~set() //used to delete object
    {
        std::cout << "object is being deleted\n"; //not necessary to keep
    }

    set :: set (const set& s)
    {
        used = s.used;
        capacity = s.capacity;
        data = new value_type [s.capacity];
        std::copy (s.data, s.data+used, data);
        //cout << "copy created\n";
    }

    void set :: operator= (const set& s)
    {
        //cout << "operator= start\n";
        //have a pointer to new array
        value_type* new_data;
        if (this == &s)
            return;
        if (capacity != s.capacity)
        {
            new_data = new value_type[s.capacity]; //new array
            delete [] data; // delete old array
            data = new_data;
            capacity = s.capacity;
        }
        used = s.used;
        std::copy(s.data, s.data+used, data);
        //cout << "operator= end\n";
    }

    void set :: erase (const value_type& target)
    {
        if (find(target) < used)
        {
            data[find(target)] = data[used-1];
            used--;
        }
        //cout << "erase\n";
    }

    void set :: insert (const value_type& entry)
    {
        if (contains(entry) != true)
        {
            if (used == capacity)
            {
                reserve(capacity++);
            }
            data[used] = entry;
            used++;
        }
        //cout << "insert\n";
    }

    size_t set :: size() const
    {
        //cout << "size\n";
        return used;
    }

    bool set :: contains (const value_type& target) const
    {
        //cout << "contains\n";
        return find(target) < used;
    }

    std::ostream& operator<<(std::ostream& output, const set& s)
    {
        //cout << "operator<< start\n";
        output << '{';
        for (set::size_type i = 0; i < s.size() - 1; i++)
            output << s.data[i] << ", ";
        if (s.size() > 0)
            output << s.data[s.used-1];
        output << '}';
        std::cout << "\ncapacity is " << s.capacity << "\n";
    
        //cout << "operator<< end\n";
        return output;
    }

    void set :: reserve (size_type new_capacity)
    {
        //cout << "reserve start\n";
        //create a larger array pointer
        value_type* larger_array;
        if(new_capacity == capacity)
        {
            return; // allo\cated memory is already the right size
        }
        if (new_capacity < capacity)
        {
            new_capacity = used; // can't allocate less than using
            return;
        }
        //create new array and copy contents from previous array
        larger_array = new value_type [new_capacity]; //create larger
        std::copy(data, data+used, larger_array);
        delete[] data;
        data = larger_array;
        capacity = new_capacity;
        //cout << "reserve end\n";
    }

    set::size_type set::find (const value_type& entry) const
    {
        // if entry is not in set returns value of used
        size_type i = 0;
        while (i < used && data[i] != entry)
            ++i;
        return i;
    }
};