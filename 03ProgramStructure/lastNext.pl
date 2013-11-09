#! /usr/bin/perl
# FILE: lastNext.pl
use warnings;

print "Who is there? ";

while ( $person = <STDIN> ) {
   chomp $person;
   if ( $person eq '' || $person eq 'no' ) {
       last;
   } elsif ( $person eq 'arthur' ) {
       print "Any one else? ";
       next;
   } else {
       print "Hello $person!\n";
       print "Any one else: ";
   }
}
print "Good Bye!\n";
