#! /usr/bin/perl
# FILE: open1.pl
use warnings;

open $fileHandle, "<", $ARGV[0];

while ( <$fileHandle> ) {
	print $_;
}
