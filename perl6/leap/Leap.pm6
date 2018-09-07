unit module Leap;

sub is-leap-year ($year) is export {
    $year % 4 == 0 and $year % 100 != 0 || $year % 400 == 0;
}
