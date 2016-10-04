#!/usr/bin/perl
use strict;
use warnings;

sub bwt {
	my $str = shift @_;
	my @chars = split //, $str;

	my @suff = sort {"@chars[$a..$#chars] @chars[0..$a-1]" cmp "@chars[$b..$#chars] @chars[0..$b-1]"} 0..$#chars;
	join "", map {$_--? "$chars[$_]": "[$chars[$_]]"} @suff;
}

while (<>) {
	chomp;
	print bwt($_), "\n";
}
