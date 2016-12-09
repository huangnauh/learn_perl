use strict;
use 5.010;

sub marine {
    state $n = 0; 
    $n += 1;
    print "hello $n\n";
}

&marine;
&marine;

sub max {
    my($m, $n) = @_;
    if ($m > $n) {
        $m
    } else {
        $n
    }
}

my $max_so_far = 1000;

sub max1 {
    my ($max_so_far) = shift @_;
    foreach (@_) {
        if ($_ > $max_so_far) {
            $max_so_far = $_;
        }
    }
    $max_so_far
}

print "\n", max1(10, 200, 100);


my @names = qw /f d w/;
my $result = &which_element_is("dx", @names);

sub which_element_is {
    my($what, @array) = @_;
    foreach (0..$#array) {
        if ($what eq $array[$_]) {
            return $_;
        }
    }
    return -1;
}

print "\n", $result;



