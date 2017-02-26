#ifndef WORD_COUNT_H
#define WORD_COUNT_H

#include <map>
#include <sstream>
#include <string>
#include <iterator>
#include <algorithm>

namespace word_count
{
    namespace util
    {
        void trim_apostrophes(std::string& str)
        {
            auto not_apostrophe = [](char c){ return c != '\''; };
            str.erase(str.begin(), std::find_if(str.begin(), str.end(), not_apostrophe));
            str.erase(std::find_if(str.rbegin(), str.rend(), not_apostrophe).base(), str.end());
        }
    }

    std::map<std::string, int> words(std::string sentence)
    {
        std::map<std::string, int> tmp;

        auto not_valid = [](char c){ return !(std::isalpha(c) || std::isdigit(c) || c == '\''); };
        std::replace_if(sentence.begin(), sentence.end(), not_valid, ' ');
        std::transform(sentence.begin(), sentence.end(), sentence.begin(), ::tolower);

        std::istringstream stream{sentence};
           
        for (std::istream_iterator<std::string> it{stream}, end; it != end; ++it)
        {
            std::string word = *it;
            util::trim_apostrophes(word);
            if (word.size()) ++tmp[word];
        }

        return tmp;
    }
}

#endif

