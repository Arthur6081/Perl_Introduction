#! /usr/bin/perl
# FILE: debug10.pl
# execute the program as ./debug10.pl file1 file2 file3
# be prepared to explain the difference between eof() and eof.
# for all of the details execute:  perldoc -f eof

while ( <> ) {
	print $_;
	if ( eof ) {
		print "A file has ended; there are more to process.\n";
	}
	if ( eof() ) {
		print "All files have ended; there are no more to process.\n";
	}
}
