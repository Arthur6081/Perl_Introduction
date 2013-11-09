#! /usr/bin/perl
# FILE: simpleMatch.pl
use warnings;

$_ = "abcdefghi";
print $_, "\n";

print "Returned true\n" if /def/;
print "Letters before the match: $`\n";
print "Letters of the match: $&\n";
print "Letters after the match: $'\n";

print "Returned false\n" if ! /123/;
print "Letters before the match: $`\n";
print "Letters of the match: $&\n";
print "Letters after the match: $'\n";
