#! /usr/bin/perl
# FILE: arrayUndef2.pl

@array = qw( 0 1 2 3 );

$"='|';
print "\@array is @array\n";

@array = undef;
print "\@array is @array\n";
