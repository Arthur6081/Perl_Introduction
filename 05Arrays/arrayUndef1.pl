#! /usr/bin/perl
# FILE: arrayUndef1.pl

@array = qw( 0 1 2 3 );

$"='|';
print "\@array is @array\n";

$array[1] = undef;
print "\@array is @array\n";
