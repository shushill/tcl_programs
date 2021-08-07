#!/usr/bin/tclsh

package provide mathf 1.0
package require Tcl 8.5
namespace eval mathf {
    proc mul {a b} {
        return [expr $a * $b];
    }
    proc add {a b} {
        return [expr $a + $b];
    }
    proc div {a b} {
        return [expr $a/$b];
    }
}
