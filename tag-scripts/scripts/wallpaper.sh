#!/bin/sh

while true; do
	find ~/Pictures/Background -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-scale
	sleep 10m
done
