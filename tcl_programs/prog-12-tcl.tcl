#!/usr/bin/tclsh

set a 10
set b 20
set c 30
puts "a===$a b===$b c===$c";
proc var_scope {} {
    global a;
    set a 100;
    set ::b 200;
    set c 300;
}
var_scope;
puts "a===$a b===$b c===$c";
