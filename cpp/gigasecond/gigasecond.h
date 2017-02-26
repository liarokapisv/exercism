#include "boost/date_time/posix_time/posix_time.hpp"

namespace ptime = boost::posix_time;
namespace gdate = boost::gregorian;

struct gigasecond
{

	static	gdate::date advance(const gdate::date& date)
	{
		return ptime::ptime(date, ptime::seconds(1000000000)).date();
	}
};
