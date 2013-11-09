#! /usr/bin/perl
# FILE: sort.pl
use warnings;

print 'Who is there? ';
while (<>) {
    chomp;
    last if $_ eq "";
    push @people, $_;
    print "Hello $people[$#people]\n";
    print "Anyone else? "
}

print "Well, ", scalar @people, " is more than I expected.\n";

@people = sort { lc ($a) cmp lc ($b) } @people;

$" = ', ';
print "So goodbye! @people\n";
