#! /usr/bin/perl

while(<>) {
	($city, $population) = (split(':', $_))[1,3];
	print "$city $population\n";
}
