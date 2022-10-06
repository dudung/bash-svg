#!/bin/bash

#
# simple_circle.sh
# create a circle with default stroke and fill colors.
#
# Sparisoma Viridi | https://github.com/dudung
#
# 20220920 Create this script.
#

# define path to source
sp=../src

# call bash scripts
$sp/svg_beg
$sp/svg_circle cx=50 cy=50 r=30
$sp/svg_end