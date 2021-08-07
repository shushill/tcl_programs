#!/usr/bin/tclsh

set FT [ dict create .txt text .jpg Image .zip ZipArchive .doc document]
dict set FT .mp3 Music
dict set FT .avi Video
dict for {ext desc} $FT {
    puts "$desc file name extn : $ext"
}
puts "========="
foreach {ext desc} $FT {
    puts "$desc file have extension: $ext "
}
puts "==========\n"
set lst [list .txt .ogg .rar .doc]
foreach ele $lst {
    puts "checking for $ele ===> "
    if {[dict exists $FT $ele]} {
        puts "Key == $ele exists"
    } else {
        puts "Key == $ele not exists"
    }
}

puts "========="

dict set employeeInfo 12345-A forenames "Joe"
dict set employeeInfo 12345-A surnames "Schmoe"
dict set employeeInfo 12345-A street "147 short street"
dict set employeeInfo 12345-A city "Springfield"
dict set employeeInfo 12345-A phone "5555-1234"

dict set employeeInfo 98765-A forenames "Anne"
dict set employeeInfo 98765-A surnames "Walker"
dict set employeeInfo 98765-A street "32995 oakdale Way"
dict set employeeInfo 98765-A city "Springfield"
dict set employeeInfo 98765-A phone "5555-9876"

set i 0
puts "There are [dict size $employeeInfo] employees"
dict for {id info} $employeeInfo {
    puts "Employee #[incr i]: $id"
    dict with info {
        puts "Name: $forenames $surnames"
        puts "Address: $street $city"
        puts "Telephone: $phone"
    }
}
