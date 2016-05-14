#!/usr/bin/perl

use strict;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");

LINE: while(<STDIN>) {
    next LINE if /^\s*$/;

    $_ =~ s/^([A-Z])/\l$1/;
    print $_;
}