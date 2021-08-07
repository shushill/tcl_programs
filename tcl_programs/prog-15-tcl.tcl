#!/usr/bin/tclsh

set x "a b c";
puts "item at index 2 of the list {$x} is: [lindex $x 2]\n"
set i 0
foreach j $x {
    puts "$j is item number $i in list  x";
    incr i
}
