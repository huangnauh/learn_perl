my @stack = ("Fred", "Eileen", "Denise", "Charlie");
print "\n", @stack;

print "\n", pop @stack;
print "\n", @stack;

push @stack, "bob", "alice";
print "\n", @stack;

print "\n", shift @stack;
print "\n", @stack;

unshift @stack, "Hank", "Grace";
print "\n", @stack;

print "\n", join(", ", @stack)
