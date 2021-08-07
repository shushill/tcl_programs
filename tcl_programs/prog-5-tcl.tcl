#!/usr/bin/tclsh

for {set i 10} {$i > 0} {incr i -1} {
    puts "I am at count $i";
    after 200;
    update;
}
