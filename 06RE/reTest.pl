#! /usr/bin/perl
# FILE: reTest.pl
use warnings;

while( 1 ) {
    print 'Enter string:  ';
    $string = <STDIN>;
    chomp $string;
    if ( $string eq 'end' ) {
        exit 0;
    }
    print 'Enter pattern:  ';
    $pattern = <STDIN>;
    chomp $pattern;
    if ( $string =~ m/$pattern/ ) {
       print "   The match:  $&\n";
       print "Before match:  $`\n";
       print " After match:  $'\n";
    } else {
       print "No Match\n";
    }
}
