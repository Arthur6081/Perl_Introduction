#! /usr/bin/perl
# FILE: magicalWhile.pl
use warnings;

$needName = 1;

while( <> ) {
	if ( $needName == 1 ) {
		print "Current File: $ARGV\n";
		$needName = 0;
	}

	print "\t$_";

	if ( eof ) {
		print "End of $ARGV\n";
		$needName = 1;
	}

	if ( eof() ) {
		print "All files processed!\n";
	}
}
	

