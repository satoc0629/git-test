#!/bin/sh
echo "`date` custom merge start" > mergeAlwaysTheirs.log
O="$1" # prev version
A="$2" # ours version
B="$3" # theirs version
cat $A > A.txt
cat $O > O.txt
cat $B > B.txt

# always theirs ($B)
# $B -> $A
cp -f $B $A
echo "`date` custom merge end" > mergeAlwaysTheirs.log
exit 0
