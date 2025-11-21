#!/bin/bash

# Basic adenosine test

MODXNA=../../modxna.sh

if [ ! -f "$MODXNA" ] ; then
  echo "modXNA script $MODXNA not found."
  exit 1
fi

$MODXNA -i modxna.in -m ADE > modxna.out
exit $?
