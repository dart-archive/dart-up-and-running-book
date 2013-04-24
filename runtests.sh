#!/bin/bash

####
# TODO: Should run DumpRenderTree, but what to grep for?
#
# DumpRenderTree ch03/ch03_html/web/ch03_html.html
# DumpRenderTree ch03/ch03_2_html/web/ch03_2_html.html

#####
# Type Analysis

ANA="dart_analyzer --fatal-type-errors --extended-exit-code"

echo
echo "Type Analysis, running dart_analyzer..."

EXITSTATUS=0

####
# test library import samples
#
for file in using_libraries.dart using_schemes.dart library_partial.dart library_prefix.dart
do 
  (cd code/ch02/libraries; results=`$ANA $file 2>&1`)
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
if [ -n "$results" ]; then
  EXITSTATUS=1
  echo "$results"
  echo "ballgame: FAILURE."
else
  echo "ballgame: Passed analysis."
fi

####
# test all other files one at a time
#
for file in code/ch0*/*.dart code/ch03/*html/web/*.dart
do
  results=`$ANA $file 2>&1`
  if [ -n "$results" ]; then
    EXITSTATUS=1
    echo "$results"
    echo "$file: FAILURE."
  else
    echo "$file: Passed analysis."
  fi
done

exit $EXITSTATUS
