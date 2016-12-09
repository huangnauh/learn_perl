my @st = qw( a b c d );
print $#st;

($fred, $barney) = ("hello", "world");
print "\n", $fred;
print "\n", $barney;


my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print "\n", @stack;
my @back = @stack;

print "\n", pop @stack;
print "\n stack:", @stack;
print "\n back:", @back;

push @stack, "bob", "alice";
print "\n", @stack;

print "\n", shift @stack;
print "\n", @stack;

unshift @stack, "Hank", "Grace";
print "\n", @stack;

print "\n", join(", ", @stack);


my @arr = qw(a b c d);
@remove = splice @arr, 2, 1;
print "\n", @arr;
print "\n", @remove;


@rocks = qw/ a v c de/;
@sorted = sort @rocks;
print "\n", @sorted;
print "\n", @rocks;
@back = reverse sort @rocks;
print "\n", @back;
@rocks = sort @rocks;
print "\n", @rocks;
while(my ($index, $value) = each @rocks) {
    print "\n $index: $value";
}

print "\n", 6 + @rocks;
