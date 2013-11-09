#! /usr/bin/perl
# FILE: myReferenced.pl
use warnings;

sub useGlobal {
	print "From use Global: \$var1 = $var1\n";
	my $var2 = $var1 + 3;
	print "From use Global: \$var2 = $var2\n";
	return \$var2;
}

no warnings;
$var1 = 10;
$var2 = "I am global\n";
print "From main: \$var2 = $var2\n";
$refvar2 = useGlobal();
print "From main: \$var2 = $var2\n";
print "The my'd variable form useGlobal \$var2 = $$refvar2\n";

