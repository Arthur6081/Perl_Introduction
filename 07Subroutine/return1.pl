#! /usr/bin/perl
# FILE: return1.pl
use warnings;

sub justASub {
	@a = qw( one two three );
	@b = qw( four five six );
	print "\@a = @a\n";
	print "\@b = @b\n";
	return @a, @b;
}

( @q, @r ) = justASub();
print "\@q = @q\n";
print "\@r = @r\n";
