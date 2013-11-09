#! /usr/bin/perl
# FILE: debug13.pl
use strict;
use warnings;

sub myPrint {
	print "@_\n";
}

my $" = ":";
 @main::ag = qw( one two three );
myPrint @ag;

{ 
	local $" = '!';
	myPrint @ag;
}
myPrint @ag;
