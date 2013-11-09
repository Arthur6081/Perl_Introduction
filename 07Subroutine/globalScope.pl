#! /usr/bin/perl
# FILE: globalScope.pl
use warnings;

sub useGlobal {
	print "From use Global: \$var1 = $var1\n";
	$var2 = $var1 + 3;
}

no warnings;
# no warnings turns off warnings to end of block
print "From main: \$var2 = $var2\n";
$var1 = 10;
useGlobal();
print "From main: \$var2 = $var2\n";
