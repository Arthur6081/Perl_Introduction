#! /usr/bin/perl
# FILE: show Directory.pl
use warnings;

opendir DIR, $ARGV[0] or die "Could not open $ARGV[0]: $!\n";
map { print "$_\n" } readdir DIR;
closedir DIR;
