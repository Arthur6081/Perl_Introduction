#! /usr/bin/perl
# FILE: unless.pl
use warnings;

print "Enter a number:  ";
$a = <STDIN>;
chomp $a;

if ( ! ( $a == 5 ) ) {
	print "\$a is not equal to 5\n";
} 

unless ( $a == 5 ) {
	print "\$a is not equal to 5\n";
} 
