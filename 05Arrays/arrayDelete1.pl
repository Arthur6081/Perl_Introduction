#! /usr/bin/perl
# FILE: arrayUndef1.pl

@array = qw( 0 1 2 3 );

$"='|';
print "\@array size is ", scalar( @array ), "\n";
print "\@array is @array\n";

delete $array[$#array];
print "\@array size is ", scalar( @array ), "\n";
print "\@array is @array\n";
