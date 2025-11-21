#!/bin/bash

# Basic adenosine test

MODXNA=../../modxna.sh

if [ ! -f "$MODXNA" ] ; then
  echo "modXNA script $MODXNA not found."
  exit 1
fi

$MODXNA -i modxna.in -m ADE > modxna.out
ERR=$?
NDIFF=`diff ADE.lib.save ADE.lib | wc -l`
((ERR = $ERR + $NDIFF))
if [ $ERR -eq 0 ] ; then
  echo "Passed."
else
  echo "Failed. Check diff ADE.lib.save ADE.lib"
fi
exit $?
