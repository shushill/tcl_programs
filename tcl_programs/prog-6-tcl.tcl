#!/usr/bin/tclsh

for {set i 0} {$i < 100} {incr i 5} {
    puts "I am at count $i";
    after 200;
    update;
}
