#! /usr/bin/perl 
# FILE: telemtry.pl
use warnings;

print "Enter name of person:  ";
$name = <STDIN>;
chomp $name;
$name =~ tr/ 	//d;

if ( "$name" eq "" ) {
	print $0 NAME_OF_PERSON;
	exit 1;
}

while( <> ) {
	if ( $name ne substr( $_, 0, index( $_, ' ') ) ) {
		next;
	}
	($key, $value) = (split(':', (split( ' ', $_))[1]) );
	$key = uc $key;
	$data{$key} += $value;
	$count{$key}++;
}

##!! Print out the averages for each of the types of data
