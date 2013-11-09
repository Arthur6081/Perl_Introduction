#! /usr/bin/perl
# FILE: open2.pl
use warnings;

open $fileHandle, ">", $ARGV[0];

while ( <STDIN> ) {
	print $fileHandle $_;
}

close $fileHandle;
