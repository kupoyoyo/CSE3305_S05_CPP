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
            node* current = source.head_ptr;
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
        if(head_ptr != NULL)
        {
            list_clear(head_ptr);
        }
    }
    
    //Modification member functions
    
    void sequence :: start()
    {
        precursor = NULL;
        cursor = head_ptr;
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
        if (!is_item())
            start();
        
        if (cursor == head_ptr)
        {
            list_head_insert(head_ptr, entry);
            cursor = head_ptr;
            if(many_nodes == 0)
                tail_ptr = head_ptr;
        }
        else
        {
            node* temp = head_ptr;
            while(temp != precursor)
                temp = temp -> link();
            list_insert(temp, entry);
            if (temp == tail_ptr)
                tail_ptr = tail_ptr -> link();
            cursor = precursor -> link();
        }
        many_nodes++;
        
        //cout << "insert\n";
    }
    
    void sequence :: attach(const value_type& entry)
    {
        if (!is_item())
        {
            if(many_nodes == 0)
            {
                list_head_insert(head_ptr, entry);
                tail_ptr = head_ptr;
                cursor = head_ptr;
                precursor = NULL;
            }
            else
            {
                list_insert(tail_ptr, entry);
                tail_ptr = tail_ptr -> link();
                
            }
        }
        else
        {
            list_insert(cursor, entry);
            precursor = cursor;
            cursor = cursor -> link();
            if (tail_ptr == precursor)
                tail_ptr = cursor;
        }
        many_nodes++;
        
        //cout << "attach\n";
    }
    
    void sequence :: remove_current()
    {        
        assert(is_item());
        
        if (cursor == head_ptr)
        {
            list_head_remove(head_ptr);
            cursor = head_ptr;
        }
        else
        {
            list_remove(precursor);
            cursor = precursor -> link();
        }
        many_nodes--;
        
        //cout << "remove_current\n";
    }
    
    void sequence :: operator =(const sequence& source)
    {
        //cout << "operator= start\n";
        
        if (this != &source)
        {
            if (size() > 0)
                list_clear (head_ptr);
            many_nodes = source.many_nodes;
            list_copy(source.head_ptr, head_ptr, tail_ptr);
            if (source.precursor == NULL)
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
                precursor = list_locate(head_ptr, count);
                cursor = precursor -> link();
            }
        }
        
        //cout << "operator= end\n";
    }

    sequence :: value_type sequence :: current() const
    {
        assert(is_item());
        return cursor -> data();
    }
};