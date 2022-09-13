#!/usr/bin/perl

use strict;

my $x = 5.1;
my $y = 5.1;

if ( $x > 5.0 )
{
    if ( $y > 5.0 ){
    print "x and y are greater than 5\n";
    }
}

if ( ( $x > 5.0 ) and ( $y > 5.0 ) ){
    print "x and y are greater than 5\n";
}


#Count salary and bonus
print "\n========COUNT SALARY AND BONUS========";

print "\nEnter salary : ";
my $salary = <STDIN>;

print "Enter bonus : ";
my $bonus = <STDIN>;

if($salary<100000){
    if($bonus<100000){
        print "\nYou are not a banker.\n";
    }
    else{
        print "\nYou won the lottery.\n";
    }
}
else{
    if($bonus<100000){
        print "\nYou are banker with no bonus\n";
    }
    else{
        print "\nYou are a banker with a bonus\n";
    }
}

if(($salary=>100000) or ($bonus=>100000)){
    print "You are buying dinner tonight.\n";
}


#Pattern matching
print "\n========PATTERN MATCHING========";
print "\nEnter word : ";
my $input = <>;

if($input =~ /Chris/){
    print "Found Chris!";
}
elsif($input =~ /Bells/){
    print "Ding dong!";
}
elsif($input =~ /Wonder/){
    print "I was wondering about that too";
}
elsif($input =~ /Land/){
    print "Air and Sea";
}
else{
    print "No word found!";
}
