1. Init two local blockchains, hermes relayer which implements ics-31 cross-chain-query

```shell
docker compose up
```

2. Wait until ibc-0, ibc-1, node-0, node-1 are ready. 

3. Define your own cross-chain-query requests in interchain-query-test.sh.
    - All you have to do is changing the query path(parameter after command 'ibc-query')

4. Execute test shell script
```shell
bash interchain-query-test.sh
```

5. Set appropriate query messages in interchain-query-result.sh

    - You have to increment query-id according to the test script.

6. Check the query result
```shell
bash interchain-query-result.sh
```
