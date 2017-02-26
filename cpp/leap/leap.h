#ifndef LEAP_H
#define LEAP_H

struct leap
{
	static bool is_leap_year(int year)
	{
		if (year % 400 == 0) return true;

		if (year % 100 == 0) return false;

		if (year % 4 == 0) return true;

		return false;
	}
				
};

#endif
