#! /usr/bin/perl
# FILE: hash.pl
use warnings;

%music = ( Martin => 'lute', Williams => 'guitar' );
$music{Hisaishi} = 'Sound Tracks';

$person = 'Martin';

print "$music{Martin}\n";
print "$music{'Martin'}\n";
print "$music{ 'Martin' }\n";
print "$music{ Martin }\n";
print "$music{ $person }\n";

print "%music\n";

$, = ' ';
print %music, "\n";

