#!/usr/bin/perl
use strict;
use warnings;

sub reverse_bwt {
	my $str = shift @_;
	my $idx = index $str,"[";
	$str =~ tr/[]//d;
	my @chars = split//, $str;
	my @sorted = sort {$chars[$a] cmp $chars[$b]} 0..$#chars;
	
	join "", map {$chars[$idx=$sorted[$idx]]} @chars;
}

while (<>) {
	chomp;
	print reverse_bwt($_), "\n";
}
