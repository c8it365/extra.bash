#!/bin/sh

{
  PACKAGE=$(basename $0 .sh)
  CWD=$(cd $(dirname $0); pwd)
  PACKAGE_LIB=${CWD}/../lib/${PACKAGE}

  import() {
    . ${PACKAGE_LIB}/${1}.sh
  }

  dyn() {
    local temp=$(mktemp)
    curl -fs $1 > $temp
    . $temp
    rm $temp
  }
}

ARGS=$@
import main
