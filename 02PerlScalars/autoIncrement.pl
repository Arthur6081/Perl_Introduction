#! /usr/bin/perl
# FILE: autoIncrement.pl
use warnings;

$a = 2;
$c = 1;

$d = $c + ++$a;
print "\$d = $d \$a = $a\n";

$e = $c + $a++;
print "\$e = $e \$a = $a\n";
