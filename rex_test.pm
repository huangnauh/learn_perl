use 5.0.14;
my $what = "hua";
while (<>) {
    if (/\A($what)/) {
        print $1;
    }
}

my $other = "abcdef";
if ($other =~ /\babc/) {
    print $other;
}

my $names = "hu and hua";

if ($names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/) {
    print "I saw $+{name1} and $+{name2}";
}

if ("hello world, 123" =~ /\s(\w+),/p) {
    print "\n\$`:", ${^PREMATCH};
    print "\n\$&:", ${^MATCH};
    print "\n\$':", ${^POSTMATCH};
}

if ("Https://" =~ m{\Ahttps?://\z}i) {
    print "\nok\n";
} else {
    print "\nerror\n";
}
