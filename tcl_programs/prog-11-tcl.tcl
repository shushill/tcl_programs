#!/usr/bin/tclsh

proc add {a b} {
    return [expr $a + $b];
}
set sum [ add 5 8 ];
puts "sum is $sum";
