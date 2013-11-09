#! /usr/bin/perl
# FILE: use OOBox.pl
use warnings;

use ooBox;

$box1 = new ooBox( width => 3, depth => 4, height => 5 );

print " box width = ", $box1->width(), "\n";
print "box height = ", $box1->height(), "\n";
print " box depth = ", $box1->depth(), "\n";
print "box volume = ", $box1->volume(), "\n";
