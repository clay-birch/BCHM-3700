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
$dnaSequence = "/home/dawn3700/Team Project 2/Task.txt";

# Opening the file
open(DNAFILE, $dnaSequence);

#create variables and store DNA sequence, not that as a scalar variable only the first line is stored
# there are 6 lines in the file so they will be stored in 6 scalar variables
#note we could create a array instead @DNA, and refer to the individual lines as $DNA[1]
$DNA1=<DNAFILE> ;
$DNA2=<DNAFILE> ;
$DNA3=<DNAFILE> ;
$DNA4=<DNAFILE> ;
$DNA5=<DNAFILE> ;
$DNA6=<DNAFILE> ;

#print DNA sequence
print $DNA1, $DNA2, $DNA3, $DNA4, $DNA5, $DNA6;

#create Reverse sequence notice how reverse 1 is forward DNA6 this reverses the line order while the reverse function reverses the sequence within the line.

$rDNA1 = reverse $DNA6;
$rDNA2 = reverse $DNA5;
$rDNA3 = reverse $DNA4;
$rDNA4 = reverse $DNA3;
$rDNA5 = reverse $DNA2;
$rDNA6 = reverse $DNA1;

#remove numbers from rDNA strings
$rDNA1 =~ s/\d//g;
$rDNA2 =~ s/\d//g;
$rDNA3 =~ s/\d//g;
$rDNA4 =~ s/\d//g;
$rDNA5 =~ s/\d//g;
$rDNA6 =~ s/\d//g;

#get complimentary sequences to reversed DNA sequences
$rDNA1 =~ tr/atcg/tagc/;
$rDNA2 =~ tr/atcg/tagc/;
$rDNA3 =~ tr/atcg/tagc/;
$rDNA4 =~ tr/atcg/tagc/;
$rDNA5 =~ tr/atcg/tagc/;
$rDNA6 =~ tr/atcg/tagc/;

#count number of nucleotides per line

#add numerical value of starting nucleotide of line to start of line

#print reverse DNA sequence. note it would be nice to 
print $rDNA1, $rDNA2, $rDNA3, $rDNA4, $rDNA5, $rDNA6, "\n";

=pod

my @dna = @_;

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
=cut
exit;
