#! /usr/bin/perl
# FILE: arraymagicalAt.pl
use warnings;

sub times2 {
	print "from times2: @_\n";
	for( $i = 0; $i < @_; $i++ ) {
		$_[$i] *= 2;
	}
}

@array = qw( 1 2 3 );
$var1 = 10;
$var2 = 20;

print "from main: @array, $var1, $var2\n";
times2( @array, $var1, $var2 );
print "after call: @array, $var1, $var2\n";
