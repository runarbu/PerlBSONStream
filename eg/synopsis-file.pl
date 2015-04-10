#!/usr/bin/perl
use strict;
use warnings;

use lib "lib";

use BSON::Stream;

my $file = shift @ARGV or die("Pleas specify a file to read!");

open(my $INF,$file) or die("Can not open file '$file':$!");

my $bsonstream = BSON::Stream->new($INF);

while (my $res = $bsonstream->get) {
	
	printf("%s own %s apples\n",$res->{'name'}, $res->{'apples'});

}

close($INF);
