#! /usr/bin/perl
# FILE: doBlock.pl
use warnings;

while ( do { print "Enter a word: ";
             $word = <STDIN> } ) {
	chomp $word;
	last if $word eq 'good bye';
	print "The word is $word\n";
}

print "Good Bye\n";
	
