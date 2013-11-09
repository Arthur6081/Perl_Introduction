#! /usr/bin/perl
# FILE: printReview.pl
use warnings;

$OKStream = 'STDOUT';
$ErrStream = 'STDERR';
$listElement = ' is the sum';
$\ = "\n";

while ( do { local $\ = ' ';
             print "Enter a number: ";
			 $line = <>; } ) {
	chomp $line;
	$OK = $line % 2;
	print $OKStream 3 + $line, $listElement;
	print { $OK ? $OKStream : $ErrStream } "\$OK is $OK";
}
