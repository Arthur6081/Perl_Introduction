#! /usr/bin/perl
# FILE: echo.pl
use warnings;

$" = " ";
print "Number of variables is ", scalar @ARGV,"\n";
print "@ARGV\n";

