#!/usr/bin/tclsh

set fRead [open infile.txt r]
set fWrite [open outfile.txt w]
while {![eof $fRead]} {
    set line [gets $fRead]
    set line [string trimright $line "\n"]
    puts "$line"
    set line [string toupper $line]
    puts $fWrite $line
}
close $fRead
close $fWrite
