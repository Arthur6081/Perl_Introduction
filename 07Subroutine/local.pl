#! /usr/bin/perl
# FILE: local.pl
use warnings;

sub myPrint {
	print "@_\n";
}

$" = ":";
@ag = qw( one two three );
myPrint @ag;

{ 
	local $" = '!';
	myPrint @ag;
}
myPrint @ag;
