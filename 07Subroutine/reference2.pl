#! /usr/bin/perl
# FILE: references.pl
use warnings;

@array = ( 0, 1, 2, 3 );
$rarray = \@array;

print "\$array[1] = $array[1]\n";
print "\$rarray = $rarray\n";
print "\$\$rarray = $$rarray[1]\n";
print "\$rarray->[1] = $rarray->[1]\n";

%hash = ( one => 1, two => 2, three => 3 );
$rhash = \%hash;
print "\$hash{one} = $hash{one}\n";
print "\$\$rhash{one} = $$rhash{one}\n";
print "\$rhash->{one} = $rhash->{one}\n";
