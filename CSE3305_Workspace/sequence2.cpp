/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         4
 */

#include <cstdlib>  // Provides size_t
#include <iostream>
#include <cassert>
#include "sequence2.h"

using namespace std;
namespace main_savitch_4
{
    
    //Constructors and Destructor
    sequence :: sequence (size_type DEFAULT_CAPACITY)
    {
        used = 0;
        capacity = DEFAULT_CAPACITY;
        data = new value_type[DEFAULT_CAPACITY];
        current_index = 0;
        
        //cout << "Class created\n";
    }
    
    sequence :: sequence (const sequence& source)
    {
        used = source.used;
        capacity = source.capacity;
        data = new value_type[source.capacity];
        copy(source.data, source.data+used, data);
        current_index = source.current_index;
        
        //cout << "Class copied\n";
    }
    
    sequence :: ~sequence()
    {
        //cout << "object is being deleted\n"; //not necessary to keep
    }
    
    //Modification member functions
    void sequence :: resize(size_type new_capacity)
    {
        //cout << "resize started\n";
        
        value_type* new_array;
        if(new_capacity == capacity)
        {
            return;
        }
        if(new_capacity < capacity)
        {
            new_capacity = used; //Can't allocate less than used
            return;
        }
        new_array = new value_type [new_capacity];
        copy(data, data+used, new_array);
        delete[] data;
        data = new_array;
        capacity = new_capacity;
        
        //cout << "resize end\n";
    }
    
    void sequence :: start()
    {
        if(used != 0)
            current_index = 0;
        else
            current_index = -1;
        
        //cout << "start\n";
    }
    
    void sequence :: advance()
    {
        assert(is_item());
        if(current_index == used)
            current_index = -1;
        else
            current_index++;
        
        //cout << "advance\n";
    }
    
    void sequence :: insert(const value_type& entry)
    {
        if(used >= capacity)
            resize(used);
        
        if(!is_item())
            current_index = 0;
        
        for(size_type i = used; i > current_index; --i)
            data[i] = data[i-1];
        data[current_index] = entry;
        ++used;
        
        //cout << "insert\n";
    }
    
    void sequence :: attach(const value_type& entry)
    {
        if(used >= capacity)
            resize(used+1);
            
        if(!is_item())
        {
            current_index = used;
            data[current_index] = entry;
            used++;
        }
        else
        {
            for(size_type i = used; i > current_index+1; --i)
                data[i] = data[i-1];
            data[current_index+1] = entry;
            ++used;
            current_index++;
        }
        //cout << "attach\n";
    }
    
    void sequence :: remove_current()
    {
        assert(is_item());
        
        for(size_type i = current_index; i < used-1; i++)
            data[i] = data[i+1];
        used--;
        
        //cout << "remove_current\n";
    }
    
    void sequence :: operator =(const sequence& source)
    {
        cout << "operator= start\n";
        
        value_type* new_data;
        if(this == &source)
            return;
        if (capacity != source.capacity)
        {
            new_data = new value_type[source.capacity];
            delete[] data;
            data = new_data;
            capacity = source.capacity;
        }
        used = source.used;
        copy(source.data, source.data+used, data);
        current_index = source.current_index;
        //cout << "operator= end\n";
    }
    
    //Constant member functions
    sequence :: size_type sequence :: size() const
    {
        return used;
    }
    
    bool sequence :: is_item() const
    {
        return(current_index < used);
    }
    
    sequence :: value_type sequence :: current() const
    {
        assert(is_item());
        return data[current_index];
    }
};