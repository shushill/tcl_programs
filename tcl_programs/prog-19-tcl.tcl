#!/usr/bin/tclsh

set statement " Fan is a student "
puts $statement
set statement [string trim $statement]
puts $statement
puts [string length $statement]
puts [string index $statement 4]
puts [string index $statement end]
puts [string first "is" $statement]
puts [string last "is" $statement]
puts [string first $statement "is"]
puts [string range $statement 4 end]
puts [string replace $statement 9 end "professor"]
puts [string match "*student" $statement]

set mystr "A quick brown fox jumped over a lazy dog"
if {[regexp -nocase "brown" $mystr]} {
    puts "Match found in \"$mystr\".... and replacing "
    regsub -nocase -all "brown" $mystr "REPLACED" mystr
    puts "now it is ==>> $mystr"
}

set res "A quick brown fox jumped over a brwn lazy dog"
foreach ele $res {
    if {[regexp {b.*n} $ele]} {
        puts "$ele"
    }
}

set sample "Where there is will, There is a way"
set result [regexp {[a-z]+} $sample match]
puts "match_status<$result> matched string: <$match> "
set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2]
puts "match_status<$result> matched string: <$match> 1st string: <$sub1> 2nd string: <$sub2> "

regsub "way" $sample "abundance" sample2
puts "old string: $sample \nnew string: $sample2"
