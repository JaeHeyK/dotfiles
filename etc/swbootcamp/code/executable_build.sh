#!/bin/zsh

WS_DIR="/home/jhkim/etc/swbootcamp/code"
TARGET=`ls -t -d */ | head -1 | cut -d "/" -f 1`
echo "Compile $TARGET"
gcc -o ${WS_DIR}/${TARGET}/${TARGET} ${WS_DIR}/${TARGET}/${TARGET}.c

echo "Run $TARGET"
echo "=========================="
${WS_DIR}/${TARGET}/${TARGET}
