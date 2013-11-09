#! /usr/bin/perl
# FILEL list1.pl
use warnings;

( $a, $b ) = qw( this is ist );
print "\$a = $a \$b = $b\n";
$c = ( 1, 2, 3, 4, ) [3];
;print "\$c = $c\n";
( $d, $e, $f ) = ( 1, 2, 3, 4 ) [0..2];
print "\$d = $d \$e = $e \$f = $f\n";
( $g, $h, $i ) = ( 1, 2, 3, 4 ) [3, 0, 2];
print "\$g = $g \$h = $h \$i = $i\n";

