#! /usr/bin/perl
# FILE: if.pl
#use warnings;

print "Enter a number:  ";
$a = <STDIN>;
#chomp $a;

if ( $ a < 50 ) {
	print "\$a < 50\n";
} elsif ( $a == 50 ) {
	print "\$a == 50\n";
} elsif ( $a > 50 ) {
	print "\$a > 50\n";
} else {
	print "Something is wrong with \$a\n";
}

