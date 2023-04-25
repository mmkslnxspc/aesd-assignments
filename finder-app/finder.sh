#!/bin/sh

# exit when any command fails
set -e

print_help () {
  echo "Example usage 'finder.sh /tmp/aesd/assignment1 linux'"
}

if [ $# -ne 2 ] 
then
  echo "Unexpected number of parameters."
  print_help
  exit 1
fi

DIRECTORY=$1
SEARCH_TERM=$2

if [ -d DIRECTORY ]
then
  echo "${DIRECTORY} is not a directory."
  print_help
  exit 1
fi

TOTAL_FILE_COUNT=$(find ${DIRECTORY} -type f | wc -l)
MATCHING_LINES_COUNT=$(grep "${SEARCH_TERM}" ${DIRECTORY}/* | wc -l)

echo "The number of files are ${TOTAL_FILE_COUNT} and the number of matching lines are ${MATCHING_LINES_COUNT}"
exit 0

