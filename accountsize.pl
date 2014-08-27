#!/usr/bin/perl

use File::Find;
use strict;
my $dir = $ARGV[0];
my $size;
find(sub{ -f and ( $size += -s ) }, $dir );
$size = sprintf("%.02f",$size / 1024 / 1024);
my $size2 = $size / 1000;
print "$dir : $size MB ( $size2 GB )\n";
