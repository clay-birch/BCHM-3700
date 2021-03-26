#!/usr/bin/perl -w

#****************************************************
# This file takes in a sequence of DNA and 
# creates the reverse compliement of the sequence 
# BCHM 3700
# Group 1
# March 23 2021
#****************************************************

#use warnings;
#use strict;

# Creating a varible 
$dnaSequence = "/home/birc3700/Desktop/Task.txt";

# Opening the file
open(DNAFILE, $dnaSequence);

# Reading the data in the file and storing it
@dna = <DNAFILE>

# The while loop reads the lines of the file and gets 
# the reverse compliment

while(<DNAFILE>)
{
	my @dna = $_;

	chomp @dna;
	
	@dna = reverse @dna;

	@dna =~ tr/actg/tgac;

	@dna = @dna."\n";

	print DNAFILE ("@dna");
	print ("\n");
}

exit;
