#! /usr/bin/perl
# FILE:  pushpop.pl
use warnings;

@letters = qw( a b c );
push @letters, qw( d e );
print "\@letters = @letters\n\n";

print pop @letters, "\n";
print "\@letters = @letters\n\n";

unshift @letters, qw( 1 2 3 );
print "\@letters = @letters\n\n";

print shift @letters, "\n";
print "\@letters = @letters\n\n";
