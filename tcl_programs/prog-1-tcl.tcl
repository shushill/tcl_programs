#!/usr/bin/tclsh

set money 1900;
puts "money is = $money\n";

set a 10;
set b [expr $a+10];
puts "a is $a\nb is $b\n";

unset a;
if {![info exists a]} {
set a 50;
}
incr a;

puts "a is $a";
