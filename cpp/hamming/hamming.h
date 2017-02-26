#include <string>
#include <stdexcept>

struct hamming
{
	static int compute(std::string a, std::string b)
	{
		if (a.size() != b.size()) throw std::domain_error("Strings of different sizes given.");

		int hamming_distance = 0;
		
		for (std::string::size_type i = 0; i < a.size(); ++i)
		{
			if (a[i] != b[i]) ++hamming_distance;
		}

		return hamming_distance;
	}
};
