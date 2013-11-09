#! /usr/bin/perl
# FILE: hashMagicalAt.pl
use warnings;

sub printAt {
	print "from printAt: @_\n";
	$_[1] = "cat";
	$_[4] = "five";
}

%hash = ( one => 1, two => 2, three => 3 );

map { print "\$hash{$_} = $hash{$_}\n" } keys %hash;
printAt( %hash );
map { print "\$hash{$_} = $hash{$_}\n" } keys %hash;
