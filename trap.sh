#!/bin/bash

trap_with_arg() {
    func="$1" ; shift
    for sig ; do
        trap "$func $sig" "$sig"
    done
}

func_trap() {
    echo "Trapped: $1"
}

trap_with_arg func_trap 1 2 3 6

while :
do
	echo "trapping"
	sleep 1
done
