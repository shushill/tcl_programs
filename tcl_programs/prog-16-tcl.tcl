#!/usr/bin/tclsh

set testlist "a b c";
puts [lindex $testlist 0]
puts [lindex $testlist end]
lappend testlist "d"
puts $testlist
set testlist [linsert $testlist 0 "e"]
puts $testlist
set testlist [lreplace $testlist 2 2 "k"]
puts $testlist


set b [list a b {c d e} {f {g h}}]
puts $b
set b [split "a b {c d e} {f {g h}}"]
puts $b
set a [concat a b {c d e} {f {g h}}]
puts $a
lappend a {i j k}
puts $a
set b [linsert $a 3 "1 2 3"]
puts $b
set b [lreplace $b 3 5 "AA BB"]
puts $b
set jlist [list a b c [list k l m] p q [list r w]]
puts $jlist
puts [lindex $jlist 6]
puts [lindex [lindex $jlist 6] 1]
puts [lsearch $jlist "a"]
