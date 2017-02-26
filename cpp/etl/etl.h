#ifndef ETL_H
#define ETL_H
 
#include <vector>
#include <map>
#include <cstring>

namespace etl
{
    std::map<char, int> transform(const std::map<int, std::vector<char>>& other)
    {
        std::map<char, int> tmp;
        for (const auto& pair : other)
        {
            auto score = pair.first;
            auto chars = pair.second;
            for (char c : chars)
            {
                tmp.emplace(std::tolower(c), score);
            }
        }
        return tmp;
    }
}

#endif

