#!/usr/bin/tclsh

set i 0
set cmdlncr {incr i}
while {$i < 20} {
    puts "i = $i"
    eval $cmdlncr
}
