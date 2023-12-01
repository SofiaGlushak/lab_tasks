#!/bin/bash
# Usage: count_files.sh /path/to/directory
echo "--------------------------------------------"
echo -e "\t Count Files in Directory & Sub-Directories "
echo "--------------------------------------------"
if [ $( id -u ) -ne 0 ];then
echo "Error: please run as root"
exit 1
fi
if [ $# -ne 1 ];then
echo "Usage: $0 directory"
exit 1
fi
DIRECTORY=$1
if [ ! -d "$DIRECTORY" ];then
echo "Error: $DIRECTORY is not a directory"
exit 1
fi
NUM_FILES=$(find "$DIRECTORY" -type f | wc -l)
echo "Number of files in $DIRECTORY : $NUM_FILES"
