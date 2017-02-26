#ifndef BOB_H
#define BOB_H

#include <string>
#include <algorithm>
#include <iterator>
#include <functional>

struct bob
{
	static std::string hey(std::string sentence)
	{

		const bool all_whitespace = std::all_of(sentence.begin(), sentence.end(), ::iswspace);
		
		if (all_whitespace)
		{
			return "Fine. Be that way!";
		}

		const bool contains_alphas = std::find_if(sentence.begin(), sentence.end(), ::isalpha) != sentence.end();
		
		std::string sentence_no_numerals = sentence;
		sentence_no_numerals.erase(std::remove_if(sentence_no_numerals.begin(), 
		                                          sentence_no_numerals.end(),
		                                          ::isdigit),
		                           sentence_no_numerals.end());

		std::string uppercase_sentence_no_numerals = sentence_no_numerals;
		std::transform(uppercase_sentence_no_numerals.begin(), uppercase_sentence_no_numerals.end(),
		               uppercase_sentence_no_numerals.begin(), ::toupper);

		const bool shouting = sentence_no_numerals == uppercase_sentence_no_numerals;

		if (contains_alphas && shouting)
		{
			return "Whoa, chill out!";
		}

		const bool last_is_qmark = *std::find_if_not(sentence.rbegin(), sentence.rend(), ::iswspace) == '?';

		if (last_is_qmark)
		{
			return "Sure.";
		}

		return "Whatever.";
	}
};


#endif 
