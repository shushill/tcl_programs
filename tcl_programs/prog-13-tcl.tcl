#!/usr/bin/tclsh

proc setpositive {variable value} {
    upvar $variable myvar;
    if {$value < 0} {
        set myvar [expr {-$value}];
    } else {
        set myvar $value;
    }
    return 1;
}
setpositive x 5;
setpositive y -15;
puts "x==$x y==$y";
