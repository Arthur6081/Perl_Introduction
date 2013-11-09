#! /usr/bin/perl
# FILE:  qxShow.pl
use warnings;

$output = qx/ls $ARGV[0]/;
print $output;

