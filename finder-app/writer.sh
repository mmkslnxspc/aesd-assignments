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

FILE=$1
CONTENT=$2

echo "Creating file ${FILE}"
echo ${CONTENT}

PARENT_DIR="$(dirname "${FILE}")"

mkdir -p ${PARENT_DIR}
touch ${FILE}
echo ${CONTENT} > ${FILE}