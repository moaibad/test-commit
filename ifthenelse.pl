#!/usr/bin/perl

use strict;

my $x = 5.1;
my $y = 5;

if ( $x > $y ){
    print "x is greater than y\n";
}
else{
    print "y is greater than x\n";
}

$x = 5.0;
$y = 5.0;

if ( $x > $y ){
    print "x is greater than y\n";
}
elsif ( $y > $x ){
    print "y is greater than x\n";
}
elsif ( $y == $x ){
    print "x is equal to y\n";
}


#Area of circle
print "\n========AREA OF CIRCLE========\n";
print "\nEnter the radius of the circle : ";
my $input = <STDIN>;

if($input > 0){
    my $area = $input*$input*3.141592654;
    print "The area of a circle is $area, ";
    if($area > 100){
        print "This is a big circle \n";
    }
    else{
        print "this is a small circle \n";
    }
}
else{
    print "The radius of a circle must be a positive number";
}
