#!/usr/bin/tclsh

set i 0;
while {$i < 100} {
    incr i;
    if {$i == 85} {
        puts "Now value of i $i";
        continue;
    } elseif {$i == 90} {
        puts "I am at value $i";
        break;
    }
}
