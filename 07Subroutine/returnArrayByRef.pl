#! /usr/bin/perl
# FILE: returnArrayByRef.pl
use warnings;

sub justASub {
	@a = qw( one two three );
	@b = qw( four five six );
	return \@a, \@b;
}

($q, $r ) = justASub();
print "\@\$q = @$q\n";
print "\@\$r = @$r\n";
