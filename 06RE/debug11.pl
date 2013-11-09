#! /usr/bin/perl
# FILE: debug12.pl
use warnings;

$_ = "123abc456abc789abcABCabdDEF";
print $_, "\n";

while( /abc/ ) {
   print "Found $& next search starts at ", pos(), " \n";
}
