#! /bin/bash

docker exec blockchains interchain-queriesd tx ibc-query query http://blockchains:27011/cosmos/auth/v1beta1/accounts/cosmos184dszdfgrcrpudq7g0f6qx9462gzlptlgq6tzk 1 ibc-1 0-7000 1774856957000000000  --node http://localhost:27010 --chain-id ibc-0 -b block --from validator -y --trace