#ifndef ROBOT_NAME_H
#define ROBOT_NAME_H

#include <random>
#include <string>
#include <algorithm>

namespace robot_name
{
    class robot
    {
    public:
        robot() : _engine{std::random_device{}()}, _prefix_distribution{'A', 'Z'}, _postfix_distribution{'0', '9'}
        {
            reset();
        }

        const std::string& name() const
        {
            return _name;
        }

        void reset() 
        {
            
            auto generate_prefix = [this](){ return static_cast<unsigned char>(_prefix_distribution(_engine)); };
            auto generate_postfix = [this](){ return static_cast<unsigned char>(_postfix_distribution(_engine)); };
            
            _name.clear();
            std::generate_n(std::back_inserter(_name), 2, generate_prefix);
            std::generate_n(std::back_inserter(_name), 3, generate_postfix);
        }

    private:
        std::string _name;
        std::mt19937 _engine;
        std::uniform_int_distribution<unsigned int> _prefix_distribution;
        std::uniform_int_distribution<unsigned int> _postfix_distribution;
    };
}

#endif

