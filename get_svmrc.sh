#!/bin/bash
# solidity version managment 
# this function just respondes with available versions 
export LC_ALL=C 
# sort -t. -k 1,1 -k 2,2n -k 3,3n

svmrc() {
curl "https://api.github.com/repos/ethereum/solidity/tags" | jq '.[].name'  | sort -t. -k 1,1 -k 2,2n -k 3,3n
}
