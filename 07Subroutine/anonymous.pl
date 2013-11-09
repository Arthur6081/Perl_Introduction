#! /usr/bin/perl
# FILE: anonymous.pl
use warnings;

$rarray = [ qw( a b c ) ];
print "$$rarray[0] = $rarray->[0]\n\n";

$rarray2 = [ [ qw( 1 2 3 ) ], [ qw( 4 5 6 ) ] ];
print "${$$rarray2[0]}[2] = $$rarray2[0]->[2] ";
print "= $$rarray2[0][2] = $rarray2->[0][2]\n";

