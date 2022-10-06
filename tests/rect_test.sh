#!/bin/bash

#
# rect_test.sh
# create a rectangle with default stroke and fill colors.
#
# Sparisoma Viridi | https://github.com/dudung
#
# 20221006 Test to call bin/svg_rect
# 20221007
# 0253 Get exit status of bin/svg_rec but mixed with echoed messages.
# 0310 Output error messsage to logfile.
# 0340 Capture 
#

# set log file
logfile="log.md"
echo "# log" > $logfile
echo `date` >> $logfile

# define path to source
sp=../bin

# test bash script fo case exit status 1
#$sp/svg_rect
#es1=$?

# test bash script fo case exit status 2
#$sp/svg_rect i=1 y=2 w=3 c=3
#es2=$?

# test bash script fo case exit status 0
#svg=$($sp/svg_rect y=2 x=1 h=4 w=3)
#es3=$?

# set output file
outfile="rect_test.svg"
svg=$($sp/svg_beg)
svg+=$($sp/svg_rect y=20 x=20 h=20 w=60); es=$?
svg+=$($sp/svg_end)
echo $svg > $outfile

echo $svg >> $logfile

echo $es