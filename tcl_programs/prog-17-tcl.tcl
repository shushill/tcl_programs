#!/usr/bin/tclsh

set colour(rose) red
set colour(sky) blue
set colour(medal) gold
set colour(leaves) green
set colour(blackboard) black

foreach ele [array names colour] {
    puts "$ele is ==> $colour($ele)"
}
puts "=========="
array set colourobject {
    rose red
    sky blue
    medal gold
    leaves green
    board black
}
foreach {obj col} [array get colourobject] {
    puts "$obj is ==> $colourobject($obj)"
}
puts "=========="
array set colourcount {
    red 1
    green 2
    white 3
    blue 4
    yellow 5
}
set lst [list red green yellow purple white]
foreach col $lst {
    catch {info exists $colourcount($col)} ret;
    if {0==$ret} {
        puts "Exist == $col == whose value is $colourcount($col)";
    } else {
        puts "not exist == $col "
    }
}

set h2l [array get colourcount]
puts ">>>> $h2l"
array set l2h $h2l
foreach {obj col} [array get l2h] {
    puts "$obj is ==> $l2h($obj) "
}
