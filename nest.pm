my $color = "abc";
my $colorRef = \$color;

print $color;
print $colorRef;
print ${ $colorRef };
print $$colorRef;

my @colours = ("Red", "Orange", "Yellow", "Green", "Blue");
my $arrayRef = \@colours;

print $colours[0];
print ${ $arrayRef }[0];
print $arrayRef->[0];

my %atomicWeights = ("Hydrogen" => 1.008, "Helium" => 4.003, "Manganese" => 54.94);
my $hashRef = \%atomicWeights;
print $atomicWeights{"Hydrogen"};
print ${ $hashRef }{"Helium"};
print $hashRef->{"Manganese"};

my %owner1 = (
    "name" => "huang",
    "x" => "y",
);

my %owner2 = (
    "name" => "li",
    "x" => "yy"
);

my @owner = (\%owner1, \%owner2);

my %account = (
    "number" => "123",
    "opened" => "2017",
    "owners" => \@owner,
);

my $ownerefUn = $account{"owners"};
my @ownersUn = @{ $ownerefUn };
my $owner1RefUn = $ownersUn[0];
my %owner1Un = %{ $owner1RefUn };
print "\nUUUUUUUU", $owner1Un{"name"}, "\n";

print "Account #", $account{"number"}, "\n";
print "Opened on ", $account{"opened"}, "\n";
print "Joint owners:\n";
print "\n", $account{"owners"}->[0]->{"name"}, "\n";
print "\n", $account{"owners"}->[1]->{"name"}, "\n";


print %account;

my $owner1Ref = {
    "name" => "huang",
};

my $owner2Ref = {
    "name" => "li",
};

my $ownersRef = [$owner1Ref, $owner2Ref];

my %account1 = (
    "number" => "12345678",
    "opened" => "2000-01-01",
    "owners" => $ownersRef,
);

my %account2 = (
    "number" => "31415926",
    "opened" => "3000-01-01",
    "owners" => [
        {
            "name" => "Philip Fry",
            "DOB"  => "1974-08-06",
        },
        {
            "name" => "Hubert Farnsworth",
            "DOB"  => "2841-04-09",
        },
    ],
);

print "\n";
print %account2;


