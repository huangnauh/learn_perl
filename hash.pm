%some_hash = (
    foo => 35, 
    bar => 12.4, 
    2.5 => 'hello');

@some_array = %some_hash;

print "@some_array\n";

my @ke = keys %some_hash;
print "@ke\n";

my @va = values %some_hash;
print "@va\n";

while( ($key, $value) = each %some_hash) {
    print "$key => $value\n";
}

print "PATH is $ENV{PATH}\n";


my %last_name = qw {
    fred f
    barney b
    wilma w
};

print "enter a first name:";
chomp(my $name = <STDIN>);
print "This is $name $last_name{$name}.\n";


my (@words, %count, $word);
chomp(my @words = <STDIN>);

foreach $word (@words) {
    $count{$word} += 1;
}

foreach $word (keys %count) {
    print "$word was seen $count{$word} times.\n";
}

