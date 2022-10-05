#! /bin/bash

interchain-queriesd query ibc_query query-result query-0 --chain-id ibc-0 --node http://localhost:27010
interchain-queriesd query ibc_query query-result query-1 --chain-id ibc-0 --node http://localhost:27010
