#!/usr/bin/tclsh

set 1stcolour {red orange yellow green blue purple}
set 1stfoods {apple orange banana lime berry grape}
set status "ok bad ok ok bad bad"

foreach f $1stfoods c $1stcolour s $status {
    puts "a <$f> is usually <$c> and is = <$s>"
    after 300
    update
}
