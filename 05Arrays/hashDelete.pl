#! /usr/bin/perl
# FILE: hashDelete.pl
use warnings;

@balanced{ 'a', 'b', 'c' } = qw( 1 2 3 );
print "Before Delete\n";
map { print "$_ -> $balanced{$_}\n"; } keys %balanced;

delete $balanced{a} if exists $balanced{a};
print "After Delete\n";
$, = ' ';
print "Keys of \@balanced:", keys %balanced, "\n";
$, = "";
map { print "$_ exists\n" if exists $balanced{$_};
      print "$_ -> $balanced{$_}\n"; 
    } keys %balanced;

