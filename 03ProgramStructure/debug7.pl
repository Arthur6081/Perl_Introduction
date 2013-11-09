#! /usr/bin/perl
# FILE: debug7.pl
# This one is particularly difficult as there is an error but it does
# not affect execution.
# use warnings;

print "Who is there? ";

while ( $person = <STDIN> ) {
   chomp $person;
   last if ( $person eq '' || $person eq 'no' ) ; 
   print( "Any one else? " ) and next if ( $person eq 'arthur' ); 
   print "Hello $person!\n";
   print "Any one else: ";
}
print "Good Bye!\n";
