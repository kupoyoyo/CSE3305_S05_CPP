#ifndef STACK_PAIR_H
#define STACK_PAIR_H

template <class T>
class stack_pair {
public:
    static const int CAPACITY = 30;

    stack_pair();

    /*
     * Insert an element into the stack
     *
     * Precondition: stack is not full,.
     */
    void push_a(T item);
    void push_b(T item);

    /**
     * Remove an element from the stack and return it
     *
     * Precondition: stack is not empty.
     */
    T pop_a();
    T pop_b();
    
    /*
     * Return the size of the respective stack
     */
    size_t size_a();
    size_t size_b();

    bool is_empty_a();
    bool is_empty_b();

    bool is_full_a();
    bool is_full_b();
    

private:
    /** The current content of the stack will be stored in
     * elements data[0] .. data[size-1]
     *
     * The next element to be inserted will go in data[size]
     *
     * The next element to be removed is in data[size-1], provided that
     *  size >= 1
     */
    T data[CAPACITY];
    int size;
    T top_a;
    T top_b;
};

#include "stack_pair.template"

#endif // STACK_PAIR_H
