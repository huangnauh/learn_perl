#!/usr/bin/perl -w
use 5.0.10;
#my $what = shift @ARGV;
while (<>) {
    if (/(\S+) (\S+), (\S+)/) {
        print "we saw it $1, $2, $3.\n";
    }
}

if ("c def" =~ /(?:abc)?c ([a-z]+)/) {
    print "$1\n";
}

if ("c def" =~ /(abc)?c (?<name>[a-z]+)/) {
    print "I saw $+{name}\n";
}

my $name = "def and abc def";

if ($name =~ m/(?<last_name>\w+) and \w+ \g{last_name}/) {
    print "I saw $+{last_name} \n";
}

if ($name =~ /\s(\w+) abc/p) {
    print "prematch ${^PREMATCH}, ${^MATCH}, ${^POSTMATCH}\n";
}
