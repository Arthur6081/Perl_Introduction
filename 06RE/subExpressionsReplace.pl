#! /usr/bin/perl
# FILE:  subExpressionsReplace.pl
use warnings;

while ( <> ) {
   s/^(.*?):/$1 and editor:/;
   print "\$1 = $1\n";
   print "$_\n";
}
