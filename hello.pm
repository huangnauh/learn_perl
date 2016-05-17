#! /usr/bin/perl
package hello;
#use strict;
use warnings FATAL => 'all';
use utf8;
use 5.010;

@lines = `perldoc -u -f atan2`;
foreach (@lines) {
    s/\w<([^>]+)>/\U$1/g;
    print;
}

$hello = "hello ".("world"x3);

say "yes $hello";
# 0和字符'0'是同一个标量值
if ('0') {
    say 'yes $hello';
} else {
    say "yes ${hello}s";
    say !!'10';
}

$line = <STDIN>;
if ($line ne "\n") {
    chomp $line;
    say $line;
}

$n = 1;
while($n < 10) {
    $sum += $n;     # undef 作为数字时被视为0
    $string .= $n;  # undef 作为字符串时被视为空字符串
    $n += 2;
}
say "sum: $sum";
say "string: $string";