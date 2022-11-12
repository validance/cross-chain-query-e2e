#! /bin/bash

# account: validator, wallet

### modify query_id ###
query_id="query-2"
#######################

echo "test query id: ${query_id}"
sleep 1
#####
echo "<wallet send query and validator try to prune query. Pruning should be failed>."

# wallet send ibc query
sleep 1
echo ""
echo "-----wallet send query------"
docker exec blockchains interchain-queriesd tx ibc-query query http://blockchains:27011/cosmos/auth/v1beta1/accounts/cosmos184dszdfgrcrpudq7g0f6qx9462gzlptlgq6tzk 1 ibc-1 0-7000 1774856957000000000  --node http://localhost:27010 --chain-id ibc-0 -b block --from wallet -y --trace;
echo ""
echo "wait 10s for processing tx"
sleep 10

# validator tries to prune ${query_id}. It sholud be failed.
echo ""
echo "-----validator tries to prune ${query_id}. It should be failed------"
docker exec blockchains interchain-queriesd tx ibc-query prune ${query_id} --node http://localhost:27010 --chain-id ibc-0 -b block --from validator -y --trace
echo ""
echo "wait 10s for processing tx"
sleep 10

# query ${query_id} should be successed
echo ""
echo "-----query ${query_id}. It should be successed------"
docker exec blockchains interchain-queriesd query ibc-query query-result ${query_id}  --chain-id ibc-0 --node http://localhost:27010
echo ""
sleep 1
#####
echo "<wallet tries to prune ${query_id}. It should be success>"

# wallet prune ${query_id}
sleep 1
echo ""
echo "-----wallet prune ${query_id}. It should be successed------"
docker exec blockchains interchain-queriesd tx ibc-query prune ${query_id} --node http://localhost:27010 --chain-id ibc-0 -b block --from wallet -y --trace
echo ""
echo "wait 10s for processing tx"
sleep 10

# query ${query_id} should be failed
echo ""
echo "-----query ${query_id}. It should be failed------"
docker exec blockchains interchain-queriesd query ibc-query query-result ${query_id}  --chain-id ibc-0 --node http://localhost:27010