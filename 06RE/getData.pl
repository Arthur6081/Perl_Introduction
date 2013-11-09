#! /usr/bin/perl 
# FILE: GetData.pl
use warnings;

@ARGV != 3 && do { print STDERR "$0 name datatype file"; exit 1; };

$name = shift @ARGV;
$dataPoint = shift @ARGV;

while( <> ) {
	$name ne substr( $_, 0, index($_, ' ' ) ) && next;
	! defined( $data ) && do { $data = "$dataPoint "; };
##!! extract values from each of the lines and add them at the end of $data
}

print "$name:  $data\n";

