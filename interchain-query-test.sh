#! /bin/bash

interchain-queriesd tx ibc_query ibc-query http://blockchains:27031/cosmos/bank/v1beta1/balances/cosmos184dszdfgrcrpudq7g0f6qx9462gzlptlgq6tzk 1 ibc-1 0-7000 1774856957000000000  --node http://localhost:27030 --chain-id ibc-0 -b async --from validator -y
sleep 2
interchain-queriesd tx ibc_query ibc-query http://blockchains:27031/cosmos/auth/v1beta1/accounts/cosmos184dszdfgrcrpudq7g0f6qx9462gzlptlgq6tzk 1 ibc-1 0-7000 1774856957000000000  --node http://localhost:27030 --chain-id ibc-0 -b async --from validator -y