#! /usr/bin/perl
# FILE: simpleSub.pl
use warnings;

sub sumNumbers {
    $sum = 0;
    foreach $var ( @_ ) {
        $sum += $var;
    }
    return $sum;
}

$mySum = sumNumbers 1, 2, 3, 4, 5;
print "\$mySum = $mySum\n";

