#! /usr/bin/perl
# FILE: foreachSimple.pl
use warnings;

foreach $var ( 1, 2, 3, 4 ) {
	print $var * 2, "\n";
}
print "After llop: $var\n";

