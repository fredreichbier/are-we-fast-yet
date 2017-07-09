#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/superinstructions.inc
source $SCRIPT_PATH/script.inc
source $SCRIPT_PATH/config.inc

INFO Build SuperSOMns
if [ "$1" = "style" ]
then
  exit 0
else
  pushd $SUPERSOMNS_PATH
  ant clobber; ant compile
fi
OK SuperSOMns Build Completed.
