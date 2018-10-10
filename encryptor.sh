#! /bin/bash

encrypted_text=$(cat $1| sed 's/1/one/g; s/2/two/g; s/3/three/g; s/4/four/g; s/5/five/g;')
encrypted_text=$(echo $encrypted_text | sed 's/6/six/g; s/7/seven/g; s/8/eight/g; s/9/nine/g; s/0/zero/g;')

encrypted_text=$(echo $encrypted_text | tr '[:lower:]' '[:upper:]'| tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' 'PLMOKNIJBUHVYGCTFXRDZESAWQ')
encrypted_text=$(echo $encrypted_text | sed 's/[^A-Z]//g' | sed 's/\\n//g')

echo $encrypted_text
