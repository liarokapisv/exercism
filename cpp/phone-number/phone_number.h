#ifndef PHONE_NUMBER_H
#define PHONE_NUMBER_H

#include <string>
#include <algorithm>

class phone_number
{
public:
    phone_number(std::string number)
    {
        auto not_digit = [](char c){ return !std::isdigit(c); };

        number.erase(std::remove_if(number.begin(), number.end(), not_digit),
                    number.end());
        
        if (!(number.size() == 11 && number.front() == '1') && number.size() != 10)
        {
            _number = "0000000000";
            return;
        }

        if (number.size() == 10)
            _number = std::move(number);

        if (number.size() == 11)
            _number.assign(number.begin()+1, number.end());

        _area_code.assign(_number.begin(), _number.begin()+3);
    }

    std::string number() const { return _number; }

    std::string area_code() const { return _area_code; }

    explicit operator std::string() const
    {
        return "(" + _number.substr(0,3) + ") " + _number.substr(3,3) + "-" + _number.substr(6);
    }

private:
    std::string _number;
    std::string _area_code;
};

#endif
