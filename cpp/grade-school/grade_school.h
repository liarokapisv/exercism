#ifndef GRADE_SCHOOL_H
#define GRADE_SCHOOL_H

#include <vector>
#include <string>
#include <map>
#include <algorithm>

namespace grade_school
{
    class school
    {
    public:
    
        void add(std::string name, int grade)
        {
            auto& vec = _roster[grade];
            vec.emplace_back(std::move(name));
            std::sort(vec.begin(), vec.end());
        }

        const std::vector<std::string>& grade(int grade)
        {
            return _roster[grade];
        }
        
        const std::map<int, std::vector<std::string>>& roster() const { return _roster; }

    private:
        std::map<int, std::vector<std::string>> _roster;
    };
}

#endif

