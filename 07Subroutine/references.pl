#! /usr/bin/perl
# FILE: references.pl
use warnings;

$var = 5;
$rvar = \$var;
print "\$var = $var\n";
print "\$rvar = $rvar\n";
print "\$\$rvar = $$rvar\n";

@array = ( 0, 1, 2, 3 );
$rarray = \@array;
print "\@array = @array\n";
print "\$rarray = $rarray\n";
print "\@\$rarray = @$rarray\n";
print "\$\$rarray[2] = $$rarray[2]\n";

%hash = ( one => 1, two => 2, three => 3 );
$rhash = \%hash;
map { print "$_ -> $hash{$_}\n" } keys %hash;
print "\$rhash = $rhash\n";
map { print "$_ -> $$rhash{$_}\n" } keys %hash;
