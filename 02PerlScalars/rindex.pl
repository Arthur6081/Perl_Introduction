#! /usr/bin/perl
# FILE rindex.pl
use warnings;

$a = "abc123ABCabcd123";

print "abc found at ", rindex( $a, "abc" ), "\n";
print "abc found at ", rindex( $a, "abc", 6 ), "\n";

