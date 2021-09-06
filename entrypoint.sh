#!/bin/sh -l
echo "Hello World"
git config --global init.defaultBranch main

mkdir test && cd test && git init

cat << EOF > mydata.txt
password=passWord
EOF

echo "Executing scan..."
git secrets --scan /git/test/mydata.txt
echo "Scan done"
