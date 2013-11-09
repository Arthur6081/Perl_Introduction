#! /usr/bin/perl
# FILE: replace.pl
use warnings;

$string = 'abc123abc456abc';
$number = $string =~ s/abc/ABC/g;
print "String: $string\n";
print "Number of changes: $number\n";

$string = 'abc123abc456abc';
$number = $string !~ s/abc/ABC/g;
print "String: $string\n";
print "Number of changes: |$number|\n" if defined $number;

