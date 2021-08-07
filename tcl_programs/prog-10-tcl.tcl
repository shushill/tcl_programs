#!/usr/bin/tclsh

set no_of_edge 3;
switch $no_of_edge {
    0 -
    1 -
    2 -
    3 { puts " This is triangle "}
    default { puts "Unknown polygon" }
}
