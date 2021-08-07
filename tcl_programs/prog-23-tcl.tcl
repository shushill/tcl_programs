#!/usr/bin/tclsh

set output [exec ./hello.tcl]
puts $output
set dir [exec pwd]
puts $dir
set name [exec whoami]
puts $name
set what [exec which tclsh]
puts $what
