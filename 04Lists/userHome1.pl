#! /usr/bin/perl
# FILE: userHome1.pl

print "User Name\tHome Directory\n";
while ( ($name, $passwd, $uid, $gid, $quota, $comment,$gcos, $dir, $shell, $expire ) = getpwent() ) {
	print "$name\t$dir\n";
}

