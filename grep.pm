#!/usr/bin/perl -w
use 5.0.14;
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

while (<>) {
    chomp;
    if (/match/) {
        print "matched: |$`<$&>$'|\n";
    } else {
        print "No match: $_\n";
    }
}

$_ = "he is out";
s/is (\w+)/not $1 but in/;
print "$_\n";
$_ = "home, sweet home!";
s/home/cave/g;
print "$_\n";

$_ = "   In    put    x  y   ";
s/\s+/ /g;
print "$_!!!\n";
s/^\s+//;
print "$_!!!\n";
s/\s+$//;
print "$_!!!\n";

my $original = $_;
my $copy = $original =~ s/put/get/r;
print "copy: $copy\n";
print "original: $original\n";
$_ = "put put get";
s/(put|get)/\U$1/gi;
print "$_\n";

$_ = "put and get";
s/(\w+) and (\w+)/\U$2\E with $1/gi;
print "$_\n";

my @fields = split /:/, "ab:cd:ef:gh";
print @fields;
my @fields = split /\s+/, "This is a \t    test.\n";
print @fields;

my $result = join ":", 4,6,8,10,12;
print $result;


my $text = "Fred dropped a 5 tpm";
my %words = ($text =~ /([a-z]+)/ig);
print "\n result: $words{Fred}\n";


#perl -p -i.bak -w -e `s/A/a/g` 1*.log
