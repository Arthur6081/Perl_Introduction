#! /usr/bin/perl
# FILE: hello06.pl

print 'Who is there? ';
while ($person = <stdin>) {
    chomp $pirson;
    print "Hello $person\n";
    print 'Anyone else? ';
}
print "\nWell goodbye!\n";
