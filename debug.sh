#!bin/env bash
set -x
# show script & parameters
echo ${0} ${@}
# execute script
SCRIPT_PATH=$(dirname ${0})
CURRENT_DIR=`pwd`
cd ${1}
bash ${SCRIPT_PATH}/build.sh .
stack  repl --trace --profile --test --bench ${2}
cd ${CURRENT_DIR}
exit 0
