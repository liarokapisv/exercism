#ifndef SPACE_AGE_H
#define SPACE_AGE_H

#define earth_years 31557600 

namespace space_age
{
    class space_age
    {
    public:
        space_age(unsigned long long seconds) : _seconds{seconds}
        {
        }

        unsigned long long seconds() const { return _seconds; }
        double on_earth() const { return _seconds / (1.0 * earth_years); }
        double on_mercury() const { return _seconds / (0.2408467 * earth_years); }
        double on_venus() const { return _seconds / (0.61519726 * earth_years); }
        double on_mars() const { return _seconds / (1.8808158 * earth_years); }
        double on_jupiter() const { return _seconds / (11.862615 * earth_years); }
        double on_saturn() const { return _seconds / (29.447498 * earth_years); }
        double on_uranus() const { return _seconds / (84.016846 * earth_years); }
        double on_neptune() const { return _seconds / (164.79132 * earth_years); }

    private:
        unsigned long long _seconds;
    };
}


#endif


