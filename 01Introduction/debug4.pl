#! /usr/bin/perl
# FILE: hello06.pl

print 'Who is there? ';
while (<stdin>) {
    chomp $person;
    print "Hello $person\n";
    print 'Anyone else? ';
}
print "\nWell goodbye!\n";
