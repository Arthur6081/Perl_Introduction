#! /usr/bin/perl
# FILE: glob.pl
use warnings;

foreach $file ( glob "l*.pl" ) {
	print `ls -l $file`
}
