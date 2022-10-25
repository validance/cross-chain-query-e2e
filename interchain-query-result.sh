#! /bin/bash

docker exec blockchains interchain-queriesd query ibc-query query-result query-0 --chain-id ibc-0 --node http://localhost:27010