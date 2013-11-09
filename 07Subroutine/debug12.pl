#! /usr/bin/perl 
# FILE: debug12.pl
# Script executes as debug12.pl BR people3.txt
use warnings;

@ARGV == 2 or do { print STDERR "$0 dataWanted file"; exit 1; };

sub getHigh {
	foreach $key ( keys %{$_[0]} ) {
		@values = split ' ', $_[0]->{$key};
		$highValue = $values[0];
		for ( $index = 1; $index < @values; $index++ ) {
			$highValue = $values[$index] if $values[$index] > $highValue;
		}
		${$key} = $highValue;
	}
	return \%highValues;
}

$dataWanted = shift @ARGV;

while (<>) {
	chomp $_;
	@temp = split / /, $_;
	$name = shift @temp;
	$nameValues{$name} = '' if ! exists $nameValues{$name}; 
	for ( $i = 0; $i < @temp; $i++ ) {
		@data = split /:/, $temp[$i];
		if ( $data[0] eq $dataWanted ) {
			$nameValues{$name} .= "$data[1] ";
		}
	}
}

$highValues = &getHigh( \%nameValues );

foreach $name ( keys %$highValues ) {
	print "$name: ${$name}\n";
}
