#!/usr/bin/tclsh

set thisdir [pwd]
puts "Original_Auto_Path::$auto_path"
lappend auto_path $thisdir
puts "After appending auto path::$auto_path"
package require mathf 1.0
set result [mathf::mul 5 2]
puts $result
set result [mathf::add 5 2]
puts $result 
set result [mathf::div 5 2]
puts $result
