#!/usr/bin/perl

use strict;


#Counting Year
print "\n========COUNT YEAR========\n";

my $year = 1980;

while($year <= 2010){
    print "$year\n";
    
    if($year%10 == 0){
        print "This is a new decade!\n";
    }

    $year = $year+1;
}


#Backward loop
print "\n========COUNTDOWN========\n";

my $number = 10;

while($number>=0){
    print "$number\n";

    if($number == 0){
        print "We have lift off!\n";
    }
    
    $number = $number-1;
}


#Array loop
print "\n========ARRAY LOOP========\n";
my @array = ("James Bond 007", "Departement of Statistics", "University of Oxford", "Fantastic 4");

for(my $i=0; $i <= $#array; $i++){
    if(@array[$i] =~ /[0-9]/){
        print "@array[$i]\n";
    }
    else{
        print uc(@array[$i]), "\n";
    }
}
