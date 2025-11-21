#!/bin/bash

WORKDIR=`pwd`
for TEST in `ls */RunTest.sh` ; do
  cd $WORKDIR
  echo $TEST
  DIR=`dirname $TEST`
  cd $DIR
  ./RunTest.sh
  echo ""
done
