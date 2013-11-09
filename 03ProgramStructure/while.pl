#! /usr/bin/perl 
# FILE: wile.pl
use warnings;

$sum = 0;
$people = '';
while ( <> ) {
    chomp;
    if ( $_ eq 'end' ) {
    	print "The sum is $sum\n";
	print "The people are $people\n";
	exit 0;
    } elsif ( substr( $_, 0, 1 ) eq 'N' ) {
    	$sum = $sum + substr( $_, 2 );
    } else {
   	$people = $people . "\n\t" . substr( $_, 2 );
    }
}
