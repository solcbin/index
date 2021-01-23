 #!/bin/bash
 # @usage: this command fetches all the tags and removes the hashees
 git ls-remote -t --refs https://github.com/ethereum/solidity | sed -E 's/^[[:xdigit:]]+[[:space:]]+refs\/tags\/(.+)/\1/g'
