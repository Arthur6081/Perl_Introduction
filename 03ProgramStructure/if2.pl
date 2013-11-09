#! /usr/bin/perl
# FILE: if.pl
use warnings;

print "Enter a number:  ";
$a = <STDIN>;
chomp $a;

if ( $a !~ /[0-9]+/ ) {
	print "must enter a number\n";
	exit 1;
}

if ( $ a < 5 ) {
	print "\$a < 5\n";
} elsif ( $a == 5 ) {
	print "\$a == 5\n";
} elsif ( $a > 5 ) {
	print "\$a > 5\n";
} else {
	print "Something is wrong with \$a\n";
}

