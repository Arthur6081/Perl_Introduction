#! /usr/bin/perl
# FILE: boolean.pl
use warnings;

print "Enter a number: ";
$a = <stdin>;
chomp $a;

$a < 5 && print "\$a is less than 5\n";
$a == 3 || print "\$a is not equal to 3\n";

$a > 5 && print "\$a is > 5\n" || print "\$a is <= 5\n";

print 'Again $a is ', $a > 5 ? ">": "<=", " 5\n";
