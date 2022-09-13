#!/usr/bin/perl

use strict;

my @array = ( 1 .. 10 ); # create an array of numbers 1-10
print "The array contains: @array\n";

my $first_element = shift(@array); # remove the first element and store in first_element
my $last_element = pop(@array); # remove the last element and store in last_element
print "The first and last elements of the array are $first_element and $last_element\n";

push(@array, ( -5 .. +5 ) ); # add the numbers -5 to +5 to the array
print "The array currently contains: @array\n";

my @sortedarray = sort{$a <=> $b}(@array); # sort the array numerically
print "The sorted array contains: @sortedarray\n";

my @new_array = qw(cat dog rabbit turtle fox badger); # create a new array using qw
print "@new_array\n";


#Array sorting
print "\n========ARRAY SORTING========\n\n";

@array = qw( 99players b_squad a-team 1_Boy A-team B_squad 2_Boy);
print "The array contains: @array\n";

@sortedarray = sort{$a <=> $b} @array; #sort array numerically ascending
print "The numerically ascending sorted array contains: @sortedarray\n";

@sortedarray = sort{$b <=> $a} @array; #sort array numerically descending
print "The numerically descending sorted array contains: @sortedarray\n";

@sortedarray = sort {lc $a cmp lc $b} @array; #sort array alphabetically ascending
print "The alphabetically ascending sorted array contains: @sortedarray\n";


#Accessing array
print "\n========ACCESSING ARRAY========\n\n";

my @words = qw( The quick brown fox jumps over the lazy dog and runs away );
print "The array contains: @words\n";

print "Making sentences with array:\n";

my @makeWords = @words[0,1,3,4,5,6,8]; #first sentence
print "- @makeWords\n";

@makeWords = @words[0,2,3,10,11]; #second sentence
print "- @makeWords\n";

@makeWords = @words[0,7,8,10]; #third sentence
print "- @makeWords\n";

@makeWords = @words[0,8,10,11,3]; #fourth sentence
print "- @makeWords\n";

@makeWords = @words[0,1,2,8,10,5,6,7,3]; #fifth sentence
print "- @makeWords\n";


#Multidimensional array
print "\n========MULTIDIMENSIONAL ARRAY========\n\n";

my @people = (["Clark", "Kent"], ["Lois", "Lane"], ["Bruce", "Wayne"]);

push (@{$people[0]}, "Superman"); #add "Superman" to Clark Kent's sub-array

pop @people; #remove Bruce Wayne's sub-array

$people[1][2] ="Reporter"; #add "Reporter" to Lois Lane's sub-array

push (@people, ["Jimmy","Olsen","Photographer"]); #add third sub-array

print "Matrix result :\n";
for my $row (@people) { #print matrix
    print join(" ", @$row), "\n";
}

print "\nShow only last name :\n";
for my $row (@people) { #print only last name
    print @$row[1], "\n";
}