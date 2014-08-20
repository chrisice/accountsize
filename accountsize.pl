#!/usr/bin/perl

use File::Find;
use strict;
my $dir = $ARGV[0];
my $size;
find(sub{ -f and ( $size += -s ) }, $dir );
$size = sprintf("%.02f",$size / 1024 / 1024);
print "Directory '$dir' contains $size MB\n";
