use 5.0.14;
$_ = "yabba dabba doo aa11";

if (/abba/) {
    print "It matched!\n";
    print;
}

if (/\p{Space}/) {
    print "has withespace\n";
}

if (/\P{Digit}/) {
    print "has a digit\n";
}

if (/\p{Hex}\p{Hex}/) {
    print "has a pair of hex digits.\n";
}

if (/(.)\g{1}11/) {
    print("same char\n");
}

$_ = "Yes";
if (/yes/i) {
    print "yes you are\n";
}
