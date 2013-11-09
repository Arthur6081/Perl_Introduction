#! /usr/bin/perl
# FILE: hashWork.pl
use warnings;

%hash1 = qw( one 1 two 2 three 3 four 4 );

foreach $key ( sort keys %hash1 ) {
	print "$key:\t$hash1{$key}\n";
}

while ( ($key, $value) = each %hash1 ) {
	print "$key:\t$hash1{$key}\n";
}
