#ifndef DIFFERENCE_OF_SQUARES_H
#define DIFFERENCE_OF_SQUARES_H

namespace squares
{
    unsigned long sum_of_squares(unsigned long n)
    {
        return n*(n+1)*(2*n+1)/6;
    }

    unsigned long square_of_sums(unsigned long n)
    {
        return n*n*(n+1)*(n+1)/4;
    }

    unsigned long difference(unsigned long n)
    {
        return square_of_sums(n) - sum_of_squares(n);
    }
}

#endif

