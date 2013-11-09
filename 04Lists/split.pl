#! /usr/bin/perl
# FILE: split.pl

$string = 'I:am:a:string';
$, = "\n";
print split( ':', $string), "\n";

