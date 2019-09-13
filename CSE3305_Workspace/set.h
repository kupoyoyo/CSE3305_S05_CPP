#ifndef _SET_H_
#define _SET_H_

#include <cstdlib>
#include <iostream>

namespace thompsonLab3
{
    class set
    {
    public:
        typedef int value_type;
        typedef std::size_t size_type;
        set(size_type initial_capacity); //constructor
        // postcondition: empty set with initial_capacity has been created
        ~set();
        // postcondition: all dynamically allocated memory has been deallocated
        set(const set& s);
        // copy of s has been created;
        void operator= (const set& s);
        // postcondition: exact copy of s has been assigned to the current set object
        void erase(const value_type& target);
        // postcondition: returned true if target was removed from set ow false if target was not in the set
        void insert(const value_type& entry);
        // postcondition: if entry was not in the set, then entry has been added - ow nothing was done
        // if function was full use void reseve to increase the size of the array containing the set
        size_type size() const;
        // postcondition: number of elements in the set has been returned
        bool contains(const value_type& target) const;
        // postcondition: returned whether target is in the set
        friend std::ostream& operator<<(std::ostream& output, const set& s);
        // allows printing of object set
    private:
        void reserve (size_type new_capacity);
        // precondition: size() <= new_capacity
        // postcondition: capacity is new_capacity
        size_type find (const value_type& entry) const;
        // returned location of entry in set if entry is in set - ret used otherwise value_type* data;
        value_type* data; // the array to store items, allocated pointer
        size_type used;            // How much of array is used
        size_type capacity; // how much space is allocated
    }; // end of class
} // end of namespace
#endif // _SET_H_
