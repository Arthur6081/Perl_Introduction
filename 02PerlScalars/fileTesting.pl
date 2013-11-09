#! /usr/bin/perl
# FILE: fileTesting.pl
use warnings;

print "Enter path to file:  ";
$file = <stdin>;
chomp $file;

-f $file && print "$file is an ordinary file\n";

print "The size of the $file is ", -s $file, "\n";
print "The modification date of $file is ", -M $file, "\n";

