#ifndef NUCLEOTIDE_COUNT_H
#define NUCLEOTIDE_COUNT_H

#include <map>
#include <string>
#include <stdexcept>

namespace dna
{
    class counter
    {
    public:
        counter(const std::string& str) : _nucleotide_counts{{'A', 0}, {'T', 0}, {'C', 0}, {'G', 0}}
        {
            for (auto c : str) 
            {
                auto it = _nucleotide_counts.find(c);
                
                if (it == _nucleotide_counts.end()) 
                    throw std::invalid_argument("Invalid nucleotide sequence detected in constructor: " + c);

                ++(it->second);
            }
        }

        const std::map<char, int>& nucleotide_counts() const
        {
            return _nucleotide_counts;
        }

        int count(char c) const
        {
            auto it = _nucleotide_counts.find(c);

            if (it == _nucleotide_counts.end())
                throw std::invalid_argument("Invalid nucleotide given to count: " + c);

            return it->second;
        }

        std::map<char, int> _nucleotide_counts;
    };
    
}

#endif

