#!bin/env bash
set -x
# show script & parameters
echo ${0} ${@}
# execute script
SCRIPT_PATH=$(dirname ${0})
CURRENT_DIR=`pwd`
cd ${1}
bash ${SCRIPT_PATH}/build.sh .
stack runghc ${2}
cd ${CURRENT_DIR}
exit 0
