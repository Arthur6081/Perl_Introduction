#! /usr/bin/perl
# FILE:  debug11.pl
# The problem is the use of system instead of qx//.  Look up system: perldoc -f system
# and see what you should do.
use warnings;

$output = system( "ls $ARGV[0]" );
print $output;

