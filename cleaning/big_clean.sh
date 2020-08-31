#!/usr/bin/env bash
tmp=$(mktemp -d)
tar --gunzip -xf $1 -C $tmp
here=$(pwd)
cd $tmp 
grep -rq 'DELETE ME!' . | xargs rm
tar -czf $(basename cleaned_$1) .  
mv $(basename cleaned_$1) $here
cd ..
