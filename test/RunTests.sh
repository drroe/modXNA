#!/bin/bash

# Options
OPTS=''
while [ ! -z "$1" ] ; do
  case "$1" in
    'clean' ) echo "Cleaning test directories." ; OPTS="$OPTS clean" ;;
    * )
      echo "Warning: Unrecognized option $1" ;;
  esac
  shift
done

WORKDIR=`pwd`
for TEST in `ls */RunTest.sh` ; do
  cd $WORKDIR
  echo $TEST
  DIR=`dirname $TEST`
  cd $DIR
  ./RunTest.sh $OPTS
  echo ""
done
