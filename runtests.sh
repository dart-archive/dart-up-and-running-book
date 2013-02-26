#!/bin/bash

####
# TODO: Should run DumpRenderTree, but what to grep for?
#
# DumpRenderTree ch03/ch03_html/web/ch03_html.html
# DumpRenderTree ch03/ch03_2_html/web/ch03_2_html.html

#####
# Type Analysis

ANA="dart_analyzer --enable_type_checks --fatal-type-errors --extended-exit-code"

echo
echo "Type Analysis, running dart_analyzer..."

EXITSTATUS=0

for file in code/ch0*/*.dart
do
  results=`$ANA $file 2>&1`
  if [ -n "$results" ]; then
    EXITSTATUS=1
    echo "$results"
    echo "$file: FAILURE."
    exit $EXITSTATUS
  else
    echo "$file: Passed analysis."
  fi
done

exit $EXITSTATUS
