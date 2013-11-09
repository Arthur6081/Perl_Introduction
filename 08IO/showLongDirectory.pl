#! /usr/bin/perl
# FILE: showLongDirectory.pl
use warnings;

opendir DIR, $ARGV[0] or die "Could not opne $ARGV[0]: $!\n";

while ( $var = readdir DIR ) {
	@properties = stat($var);
	print "$var \n";
	print "\tdev        = $properties[0]\n";
	print "\tino        = $properties[1]\n";
	print "\tmode       = $properties[2]\n";
	print "\tnlink      = $properties[3]\n";
	print "\tuid        = $properties[4]\n";
	print "\tgid        = $properties[5]\n";
	print "\trdev       = $properties[6]\n";
	print "\tsize       = $properties[7]\n";
	print "\tatime      = $properties[8]\n";
	print "\tmtime      = $properties[9]\n";
	print "\tctime      = $properties[10]\n";
	print "\tblksize    = $properties[11]\n";
	print "\tblocks     = $properties[12]\n";
	print "\tblocks     = $properties[12]\n";
	print "\tblocks     = $properties[12]\n";
	print "\nPress the enter key to continue\n";
	<STDIN>;
}
