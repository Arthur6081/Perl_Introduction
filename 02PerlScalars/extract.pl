#! /usr/bin/perl
# FILE: extract.pl
use warnings;

$var = 'title:The Red Headed League:price:$1.25';
$firstColon = index $var, ':';
$secondColon = index $var, ':', $firstColon + 1;
$title = substr $var, $firstColon + 1, $secondColon - ($firstColon + 1);
print "Title = $title\n";

