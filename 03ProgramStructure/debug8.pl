#! /usr/bin/perl
# FILE: for.pl
use warnings;

$count = 0;
for ( ; <>; ++$count; ) {
    chomp;
    if ( $_ eq "good bye" ) {
    	print "Enter ^D on Unix and ^Z on Microsoft to exit\n";
    } elsif ( $_ eq "hello" ) {
    	print "Hello!\n";
    }  else {
        print "Program understands 'good bye' and 'hello'\n";
    }
}

print "The while loop was executed $count ", $count != 1 ? "times" : "time", "\n";

