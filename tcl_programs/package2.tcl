#!/usr/bin/tclsh

set thisdir [pwd]
pkg_mkIndex -verbose [file join [pwd]] . package*.tcl
