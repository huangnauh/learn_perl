print reverse <>;

print "Enter some lines, then press Ctrl-D:\n";
chomp(my @lines = <STDIN>);

print("1234567890" x 7, "12345\n");

my $format = "%20s\n" x @lines;

printf $format, @lines;

