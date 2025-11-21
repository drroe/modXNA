#!/bin/bash

# Basic adenosine test
. ../TestCommon.sh

CleanFiles *.lib modxna.out

$MODXNA -i modxna.in -m AD5 --clean > modxna.out
ERR=$?
DoTest AD5.lib.save AD5.lib
((ERR = $ERR + $?))

exit $ERR
