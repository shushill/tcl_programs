#!/usr/bin/tclsh

for {set i 0} {$i < 10} {incr i} {
    puts "I am at count $i";
    after 200;
    update;
}
