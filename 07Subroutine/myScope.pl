#! /usr/bin/perl
# FILE: globalScope.pl
use strict;
use warnings;

sub useGlobal {
	my $var1 = $_[0];
	print "From use Global: \$var1 = $var1\n";
	my $var2 = $var1 + 3;
	print "From use Global: \$var2 = $var2\n";
	return $var2;
}

my $var2;

# no warnings;
my $var1 = 10;
print "From main: \$var2 = $var2\n";
$var2 = useGlobal( $var1);
print "From main: \$var2 = $var2\n";
