#!/usr/bin/tclsh

set mlst [split "/home/document/tcl/programs" "/"];
puts $mlst
set lst [list 0 1 2 3 4 5 6 7];
puts $lst

puts [lindex $lst 3]

set lst2 [concat $lst {8 9 10}]
puts $lst2
lappend lst2 11 12 13 14
puts $lst2
lset lst2 end 15
puts $lst2
set len [llength $lst2]
puts "\n==== length of lst2 = $len"

set lst2 [lsort -ascii $lst2]
puts $lst2
set lst2 [lsort -integer $lst2]
puts $lst2
set lst2 [lsort -integer -decreasing $lst2]
puts $lst2
set lst2 [lsort -dictionary $lst2]
puts $lst2
set rlst "0.01 0.002 0.2 0.4 0.5 0.33 0.0015 9.345 77.45 2.34"
set rlst [lsort -real $rlst]
puts $rlst
set rlst [lsort -real -decreasing $rlst]
puts $rlst
