#! /usr/bin/perl
# FILE: caseManipulation.pl
use warnings;

while ( $var = <DATA> ) {
	print lc( $var );
	print lcfirst ( $var );
	print uc ( $var );
	print ucfirst( $var );
	chomp( $var );
	print $var, " has ", length( $var ), " bytes\n";
}
__DATA__
i am all lower case
I AM ALL UPPER CASE
i am 99 per cent Lower
I AM 99 PER CENT UPPER
998876

