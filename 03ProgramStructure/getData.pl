#! /usr/bin/perl
# FILE: getData.pl

print "Enter persons name:  ";
$person = <STDIN>;
chomp $person;
$person =~ tr/ 	//d;
if ( "$person" eq "" ) {
	print "$0 person data\n"; 
	exit 1; 
};
$personUC = uc $person;

print "Enter data type wanted:  ";
$dataWanted = <STDIN>;
chomp $dataWanted;
$dataWanted =~ tr/ 	//d;
if ( "$dataWanted" eq "" ) {
	print "$0 person data\n"; 
	exit 1; 
};
$dataWanted = uc $dataWanted;

while (<>) {
	chomp $_;
	$UC = uc $_;
	last if $UC  eq  $personUC;
}

if ( eof ) {
	print "$person not found in file\n";
	exit 1;
}

$dataCollected = "$person\n\t";

while (<>) {
	chomp $_;
	$spaceLocation = index $_, ' ';
	next if $spaceLocation == -1; 
	next if uc substr( $_, 0, $spaceLocation ) ne $personUC;
	next if $_ eq "end";
	$dataType = substr $_, $spaceLocation + 1, 2;
	next unless $dataWanted  eq  uc $dataType;
	$value = substr $_, index( $_, ':') + 1;
	chomp $value;
	$dataCollected .= "$value\n\t";
}

##!! PROBLEM: What happens if there is no values stored in $dataCollected
##!! This needs to be fixed.
chop $dataCollected;
print $dataCollected;


