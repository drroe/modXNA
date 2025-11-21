# Source this from all test scripts

MODXNA=../../modxna.sh
if [ ! -f "$MODXNA" ] ; then
  echo "modXNA script $MODXNA not found."
  exit 1
fi

CleanFiles() {
  while [ ! -z "$1" ] ; do
    if [ -f "$1" ] ; then
      rm $1
    fi
    shift
  done
}

DoTest() {
  if [ ! -f "$2" ] ; then
    echo "Error: Test result file $2 is missing."
    return 1
  fi
  NDIFF=`diff $1 $2 | wc -l`
  if [ $NDIFF -ne 0 ] ; then
    echo "Error: $1 $2 are different."
  else
    echo "$1 $2 passed."
  fi
  return $NDIFF
}
