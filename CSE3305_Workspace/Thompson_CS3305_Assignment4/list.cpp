/*
 * Class:       CS 3305L/01
 * Term:        Fall 2019
 * Name:        Logan Thompson
 * Instructor:  Betty Kretlow
 * Assignment:  4
 */

#include <cstdlib>  // Provides size_t
#include <iostream>
#include <cassert>
#include "list.h"

using namespace std;
    
    list tail(list lst)
    {
        //assert(head_ptr != NULL);
        
        list cursor = lst;
        cursor = cursor -> link();
        lst = cursor;
        return lst;
    }
    
    value_type head(list lst)
    {
        //assert(head_ptr != NULL);
        return lst -> data();
    }
    
    bool list_is_empty(list lst)
    {
        return(lst == NULL);
    }
    
    list cons(value_type val, const list lst)
    {
        list new_node;
        list_copy();
        list_head_insert(lst, val);
        return new_node;
    }
    
    list append(const list lst, value_type val)
    {
        if(list_is_empty(lst))
            return cons(lst, val);
        else
        {
            node* newList = cons(head(lst), append(tail(lst), val));
            return newList;
        }
    }
    
    list append(const list lst_first, const list lst_second)
    {
        if(list_is_empty(lst_first))
            return lst_second;
        else
        {
            node* newList = cons(head(lst_first), append(lst_second, tail(lst_first)));
            return newList;
        }
    }
    
    list remove_all_of(const list lst, value_type val)
    {
        if(list_is_empty(lst))
            return lst;
        else if (head(lst) == val)
            return list_remove(val);
        else
        {
            node* newList = cons(head(lst), list_remove(val));
            return newList;
        }
    }
    
    list remove_last(const list lst)
    {
        assert(!list_is_empty(lst));
        
        if(tail(lst) == NULL)
            return lst;
        else
        {
            return ;
        }
    }
    
    value_type last(const list lst)
    {
        assert(!list_is_empty(lst));
        
        if(tail(lst) == NULL)
            return head(lst);
        else
        {
            return ;
        }
    }
    
    bool equals(const list list1, const list list2)
    {
        if(list_is_empty(list1))
            return list_is_empty(list2);
        else if(list_is_empty(list2))
            return false;
        else if(head(list1) != head(list2))
            return false;
        else
            return equals(tail(list1), tail(list2));
    }