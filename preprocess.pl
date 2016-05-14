#!/usr/bin/perl

use strict;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");

LINE: while(<STDIN>) {
    $_ =~ s/<[^<>]*>\s*//gm;
    $_ =~ s/([^0-9])[.,;:¿?¡!-\/\\]+([^0-9])/$1$2/gm;
    $_ =~ s/^[.,;:¿?¡!-\/\\]+([^0-9])/$1/gm;
    
    next LINE if /^\s*$/ ;
    
    $_ =~ s/^([A-Z])/\l$1/;
    print $_ , "\n";
}