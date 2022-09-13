#!/usr/bin/perl

#Name input
print "What is your first name?\n";
$name = <>;
chomp($name);

print "What is your last name?\n";
$lastName = <>;
chomp($lastName);

print "Your first name is ",$name,"\n";

#String length
$length = length($name);
print "Length of your first name is ",$length,"\n";

#Reversed string
print "Reverse version of your first name is ";
print scalar reverse($name),"\n";

#Lower case string
print "Your first name in lower case is ";
print lc($name);

#Upper case string
print "\nYour first name in upper case is ";
print uc($name);

#Concatenate string
print "\nYour full name is ", $name. " " .$lastName;
