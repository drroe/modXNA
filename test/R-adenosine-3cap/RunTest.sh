#!/bin/bash

# RNA adenosine with 3' cap test
. ../TestCommon.sh

CleanFiles *.lib modxna.out

$MODXNA -i modxna.in -m AR3 --3cap --nomin > modxna.out
ERR=$?
#DoTest AR3.lib.save AR3.lib
((ERR = $ERR + $?))

exit $ERR
