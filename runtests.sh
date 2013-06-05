#!/bin/bash

####
# TODO: Should run DumpRenderTree, but what to grep for?
#
# DumpRenderTree ch03/ch03_html/web/ch03_html.html
# DumpRenderTree ch03/ch03_2_html/web/ch03_2_html.html

EXITSTATUS=0
PASSING=0
WARNINGS=0
FAILURES=0

#####
# Type Analysis

ANA="dartanalyzer"

echo "Type Analysis, running dartanalyzer..."

EXITSTATUS=0

####
# test library import samples
#
for file in using_libraries.dart using_schemes.dart library_partial.dart library_prefix.dart
do 
  (cd code/ch02/libraries; results=`$ANA $file 2>&1`)
  echo ""
  if [ -n "$results" ]; then
    EXITSTATUS=1
    echo "$results"
    echo "$file: FAILURE."
  else
    echo "$file: Passed analysis."
  fi
done


####
# test ballgame files as a unit
#
results=`$ANA code/ch02/ballgame/ballgame.dart code/ch02/ballgame/ball.dart code/ch02/ballgame/util.dart 2>&1`
exit_code=$?
echo ""
if [ $exit_code -eq 2 ]; then
  let FAILURES++
  EXITSTATUS=1
  echo "$results"
  echo "$file: FAILURE."
elif [ $exit_code -eq 1 ]; then
  let WARNINGS++
  echo "$results"
  echo "$file: WARNING."
elif [ $exit_code -eq 0 ]; then
  let PASSING++
  echo "$results"
else
  echo "$file: Unknown exit code: $exit_code."
fi

####
# test all other files one at a time
#
for file in code/ch0*/*.dart code/ch03/*html/web/*.dart
do
  echo ""
  results=`$ANA $file 2>&1`
  exit_code=$?
  if [ $exit_code -eq 2 ]; then
    let FAILURES++
    EXITSTATUS=1
    echo "$results"
    echo "$file: FAILURE."
  elif [ $exit_code -eq 1 ]; then
    let WARNINGS++
    echo "$results"
    echo "$file: WARNING."
  elif [ $exit_code -eq 0 ]; then
    let PASSING++
    echo "$results"
  else
    echo "$file: Unknown exit code: $exit_code."
  fi
done

echo
echo "####################################################"
echo "PASSING = $PASSING"
echo "WARNINGS = $WARNINGS"
echo "FAILURES = $FAILURES"
echo "####################################################"
echo
exit $EXITSTATUS
