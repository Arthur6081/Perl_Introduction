#! /usr/bin/perl
# FILE: fileSlurp.pl
use warnings;

local $/ = undef;

open $fileHandle, "<", $ARGV[0] or die "Could not open $ARGV[0]: $!\n";

$file = <$fileHandle>;
close $fileHandle;
$file =~ s/oldString/NEWSTRING/g;

open $outFile, ">", $ARGV[1] or die "Could not open $ARGV[1]: $!\n";
print $outFile $file;
