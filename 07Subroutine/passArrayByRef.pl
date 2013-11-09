#! /usr/bin/perl
# FILE: passArrayByRef.pl
use warnings;

sub arrayChange {
	$var = shift @_;
	for ( $i = 0; $i < @$var; $i++ ) {
		print "\$var->[$i] = $var->[$i]\n";
		$var->[$i] += 3;
	}
}

@array = ( 1, 2, 3 );
print "\@array = @array\n";
arrayChange( \@array );
print "\@array = @array\n";
