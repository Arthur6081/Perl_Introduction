#! /usr/bin/perl
# FILE: matchIterator.pl
use warnings;

$_ = "123abc456abc789abcABCabdDEF";
print $_, "\n";

while( /abc/g ) {
   print "Found $& next search starts at ", pos(), " \n";
}

print "\$& after last match is $&\n" if defined $&;
print "pos() after last match ", pos(), "\n" if defined pos();

