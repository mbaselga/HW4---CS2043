#! /usr/bin/awk -f
BEGIN {FS=";"; print "begin"}
#str = sub(",", " ", $1)
Ar[$2] = $1
#!{print NR}
#!{print $2}
#!{count++}
END {
for( i in Ar ) print "Restaurant: " i "  " Ar[i]
}