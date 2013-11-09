#! /usr/bin/perl
# FILE:  doWhile.pl
use warnings;

$sum = 0;
do {
     print "Enter number or 0 to quit: ";
     $number = <STDIN>;
     $sum = $sum + $number;
   } while $number != 0;


print "sum is $sum\n";
