#! /usr/bin/perl
# FILE: lol.pl
use warnings;

@list1 = qw( a b c );
$rlist1 = \@list1;
@list2 = qw( d e f );
@list3 = qw( g h i );
@lol = ( \@list1, \@list2, \@list3 );
print "$lol[0] = $rlist1\n";
print "${$lol[0]}[0] = $list1[0]\n";
