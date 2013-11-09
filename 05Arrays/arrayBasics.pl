#! /usr/bin/perl 
# FILE: arrayBasics.pl
use warnings;

@array = qw( a b c );
print "\@array is @array\n";
print "\$array[0] is $array[0]\n";
print "Last index, \$#array, is $#array\n";
print 'Number of elements = ', scalar @array, "\n";
($a, $b) = @array[1..2];
print "\$a = $a \$b = $b\n";
$numbers[5] = 5;
$"='|';
print "The array \@numbers: @numbers\n";

