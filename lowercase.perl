#!/usr/bin/perl -w

use strict;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");

while(<STDIN>) {
 #  print lc($_); 
 #	only the first lines are lowercased.
 
	$_ =~ s/^([A-Z])/\l$1/;
	print $_;
}
