#!/bin/bash

# adenosine with 3' cap test
. ../TestCommon.sh

CleanFiles *.lib modxna.out

$MODXNA -i modxna.in -m AD3 --3cap --clean --nomin > modxna.out
ERR=$?
DoTest AD3.lib.save AD3.lib
((ERR = $ERR + $?))

exit $ERR
