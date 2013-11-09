#! /usr/bin/perl
# FILE: telemetry.pl
# DESCRIPTION:
#	telemetry.pl reads a file with the following format
#	TH:<time in seconds from epoch>
#	SB:<numerical data>
#	PB:<numerical data>
#	HR:<numerical data>
#	BR:<numerical data>
#   Program asks which data is wanted. 
#	Only SB, PB, HR, and BR are available.
#   Program asks for which type
#		Cleans up data: no spaces before and after use tr
#	Program selects corrects data
#		Sums values
#		counts records
#	Program returns data type, record count, and average
use warnings;

# Get the data wanted
print "Enter SB or PB or HR or BR:  ";
##!! Need to get data from standrd in
$dataWanted = "  SB  ";
chomp $dataWanted;
$dataWanted eq "" && do { print "$0 DataWanted\n"; exit 1};

# Clean up the data:  uppercase and no spaces
$dataWanted = uc $dataWanted;
$dataWanted =~ tr/ 	//d;

# Make sure legal:  SB, PB, HR, BR
$dataWanted eq 'SB' || 
$dataWanted eq 'PB' ||
$dataWanted eq 'HR' ||
$dataWanted eq 'BR' ||
do { print "$0 DataWanted\n"; exit 1};

# Set collection variables
##!! use sumValues to sum values
##!! use numberOfRecords to hold record count

# Process Records
while (<>) {
	# If not record wanted next
	$type = uc substr $_, 0, 2;
	if ( $type ne $dataWnated ) {
		 next;
	} 
	
	# get value from record
	##!! currently substr is not working for this section
	$value = substr 3, $_ ;
	$value =~ tr/ 	//d;

	# process record:  add value to sumValues, increase record count by 1
	$numberOfRecords++;
	$sumValues =+ $value;
}

# print out results
print "The number of records for $dataWanted is $numberOfRecords\n";
printf "with average of %1.4f \n", $sumValues / $numberOfRecords;
