#! /usr/bin/perl 
# FILE: getHighest.pl
use warnings;

@ARGV == 2 or do { print STDERR "$0 dataWanted file"; exit 1; };

sub getHigh {
##!! Add subroutine here.
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
	print "$name: $highValues->{$name}\n";
}
