#! /usr/bin/perl
# FILE:  subExpressions.pl
use warnings;

while( <> ) {
    /^((.*):(.*)):(.*)$/;
    print "\$1 = $1\n";
    print "\$2 = $2\n";
    print "\$3 = $3\n";
    print "\$4 = $4\n";
}
