#!/usr/bin/tclsh

set filename [glob *.tcl];
foreach file $filename {
    puts $file;
}
