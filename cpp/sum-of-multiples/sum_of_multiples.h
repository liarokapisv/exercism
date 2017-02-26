#ifndef SUM_OF_MULTIPLES_H
#define SUM_OF_MULTIPLES_H

#include <vector>
#include <algorithm>

namespace sum_of_multiples
{
    unsigned long long to(std::vector<unsigned long long> factors, unsigned long long limit)
    {
        unsigned long long tmp = 0;
                        
        for (unsigned long long i = 0; i < limit; ++i)
        {
            auto pred = [i](unsigned long long n) { return i % n == 0; };
            
            if (std::find_if(factors.begin(), factors.end(), pred) != std::end(factors))
            {
                tmp += i;
            }
        }

        return tmp;
    }
}

#endif

