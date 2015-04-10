#!/usr/bin/perl
use strict;
use warnings;

use lib "lib";

use BSON::Stream;

my $bsonstream = BSON::Stream->new(*STDIN);

while (my $res = $bsonstream->get) {
	
	printf("%s own %s apples\n",$res->{'name'}, $res->{'apples'});

}

