use warnings;
use 5.0.10;
use autodie;

open LOG, '<', 'logfile';
sub total {
    my $sum;
    foreach (@_) {
        $sum += $_;
    }
    $sum;
}

print total 1,2,3,4,5;


sub average {
    if (@_ == 0) {
        return
    } else {
        my $count = @_;
        my $sum = &total(@_);
        $sum/$count;
    }
}


sub above_average {
    my $average = &average(@_);
    my @list;
    foreach my $elem (@_) {
        if ($elem > $average) {
            push @list, $elem;
        }
    }
    @list;
}

print "\n ", above_average 1,2,3,4,5;
print "\n";

while( <> ) {
    chomp;
    print "i saw $_\n";
}

my @items = qw( a b c);
printf "The items are:\n" . ("%5s\n" x @items), @items;
