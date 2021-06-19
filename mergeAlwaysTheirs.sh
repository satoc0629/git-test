#!/bin/sh
echo "custom merge start"
O="$1" # prev version
A="$2" # ours version
B="$3" # theirs version
cat $A > A.txt
cat $O > O.txt
cat $B > B.txt

# always theirs ($B)
# $B -> $A
cp -f $B $A
echo "custom merge end"
exit 0
