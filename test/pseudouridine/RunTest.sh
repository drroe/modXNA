#!/bin/bash

# Basic adenosine test
. ../TestCommon.sh

CleanFiles *.lib modxna.out

$MODXNA -i modxna.in -m RPU --clean --nomin > modxna.out
ERR=$?
DoTest RPU.lib.save RPU.lib
((ERR = $ERR + $?))

exit $ERR
