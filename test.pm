#use strict;
use warnings;

my $str1 = "4G";
my $str2 = "4H";
print $str1 . $str2;
print $str1 + $str2;
print $str1 eq $str2;
print $str1 == $str2;
print "yes" == "no"; # "1"

my @array = (
    "print",
    "abc"
);

print "\n $array[0]";
print "\nlength is".(scalar @array)."!\n";
print "\n last is ".$#array;
print "\n @array";

my %scientists = (
    "Newton" => 1,
    "Einstein" => 2
);

print "\n$scientists{\"Newton\"}";

my @scientists = %scientists;

print "@scientists";

my $data = "orange";
my @data = ("abc");
my %data = ("0" => "blue");

print $data;
print $data["0"];
print $data{0};

