#! /usr/bin/perl
# FILE: hello05.pl

print 'Who are you? ';
$person = <stdin>;
chomp $person;
print "Hello $person\n";
