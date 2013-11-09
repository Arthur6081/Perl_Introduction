#! /usr/bin/perl
# FILE:  debug6.pl
use warnings;

$sum = 0;
{
     print "Enter number or 0 to quit: ";
     $number = <STDIN>;
     $sum = $sum + $number;
   } while $number != 0;


print "sum is $sum\n";
