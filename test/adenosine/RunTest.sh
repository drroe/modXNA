#!/bin/bash

# Basic adenosine test
. ../TestCommon.sh

CleanFiles *.lib modxna.out

$MODXNA -i modxna.in -m ADE > modxna.out
ERR=$?
DoTest ADE.lib.save ADE.lib
((ERR = $ERR + $?))

exit $ERR
