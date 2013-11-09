#! /usr/bin/perl
# FILE index.pl
use warnings;

$a = "abc123ABCabcd123";

print "abc found at ", index( $a, "abc" ), "\n";
print "abc found at ", index( $a, "abc", 6 ), "\n";

