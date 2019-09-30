/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Lab:         5
 */

#include <cstdlib>  // Provides size_t
#include <iostream>
#include <cassert>
#include "sequence3.h"

using namespace std;
namespace main_savitch_5
{
    
    //Constructors and Destructor
    sequence :: sequence ()
    {
        head_ptr = NULL;
        tail_ptr = NULL;
        precursor = NULL;
        cursor = NULL;
        many_nodes = 0;
        
        //cout << "Class created\n";
    }
    
    sequence :: sequence (const sequence& source)
    {
        many_nodes = source.many_nodes;
        list_copy(source.head_ptr, head_ptr, tail_ptr);
        if (source.precursor == NULL)
        {
            precursor = NULL;
            cursor = head_ptr;
        }
        else //no current item
        {
            size_type count = 1;
            node* current = source.head_ptr'
            while (current != source.precursor)
            {
                ++count;
                current = current -> link();
            }
            precursor = list_locate (head_ptr, count);
            cursor = precursor -> link();
        }
        
        //cout << "Class copied\n";
    }
    
    sequence :: ~sequence()
    {
        //cout << "Object is being deleted\n"; //not necessary to keep
    }
    
    //Modification member functions
    /*void sequence :: resize(size_type new_capacity)
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
    }*/
    
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
        
        precursor = cursor;
        cursor = cursor -> link();
        
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
        //cout << "operator= start\n";
        
        if (this != &source)
        {
            if (size() > 0)
                list_clear (head_ptr);
            may_nodes = source.many_nodes;
            list_copy(source.head_ptr, head_ptr, tail_ptr);
            if (source.precursor = NULL)
            {
                precursor = NULL;
                cursor = head_ptr;
            }
            else
            {
                size_type count = 1;
                node* current = source.head_ptr;
                while (current != source.precursor)
                {
                    ++count;
                    current = current -> link();
                }
                
            }
        }
        
        //cout << "operator= end\n";
    }
    
    /*
    //Constant member functions
    sequence :: size_type sequence :: size() const
    {
        return many_nodes;
    }
    
    bool sequence :: is_item() const
    {
        return(cursor != NULL);
    }*/
    
    sequence :: value_type sequence :: current() const
    {
        assert(is_item());
        return cursor -> data();
    }
};