#ifndef ANAGRAM_H
#define ANAGRAM_H

#include <string>
#include <cstdio>
#include <algorithm>

namespace anagram
{
    class anagram
    {
    public:
        anagram(std::string word) : _word(std::move(word))
        {       
        }

        std::vector<std::string> matches(const std::vector<std::string>& pmatches)
        {
            std::vector<std::string> matches;
           
            for (auto& pmatch : pmatches)
            {
                if (_word.size() != pmatch.size()) continue;
                
                auto pred = [](char lhs, char rhs){ return std::tolower(lhs) == std::tolower(rhs); };

                if (std::equal(_word.begin(), _word.end(), pmatch.begin(), pred)) continue;

                if (std::is_permutation(_word.begin(), _word.end(), pmatch.begin(), pred))
                {
                    matches.emplace_back(pmatch);
                }
            }

            return matches;
        }
                
    private:
        std::string _word;
    };
}

#endif
