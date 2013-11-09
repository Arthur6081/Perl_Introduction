#! /usr/bin/perl
# FILE: split.pl
use warnings;

@ARGV == 1 or do { print "$0 number\n"; exit 1; };

$string = ':::A:B:C::D:E';
$count = 0;
print "$string\n";
print "limit $ARGV[0]\n";
@out = split ':', $string, $ARGV[0];
foreach $var ( @out ) {
	print "Element $count: $var\n";
	$count++;
}
