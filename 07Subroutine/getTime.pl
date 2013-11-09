#! /usr/bin/perl
# FILE: getTime.pl
use warnings;

$date = qx^/bin/date^;
$date =~ /[0-9][0-9]?:[0-9][0-9]?:[0-9][0-9]?/;
print "The time is $&\n";
