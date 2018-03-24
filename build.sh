#!/usr/bin/env bash
set -x
# show script & parameters
echo ${0} ${@}
# execute script
CURRENT_DIR=`pwd`
cd ${1}
stack clean --full
stack build --profile --pedantic --fast --trace --test --haddock --bench --coverage
cd ${CURRENT_DIR}
exit 0
