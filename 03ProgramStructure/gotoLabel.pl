#! /usr/bin/perl
# FILE: gotoLabel.pl
use warnings;

while ( $line = <STDIN> ) {
    chomp $line;
    if ( $line eq 'good bye' ) {
       goto EXIT;
    } elsif ( $line eq 'hello' ) {
       print "Hello!\n";
    } else {
       print "Program understands only 'good bye' and 'hello'\n";
    }
}

EXIT:  print "Well! Good Bye!\n";

