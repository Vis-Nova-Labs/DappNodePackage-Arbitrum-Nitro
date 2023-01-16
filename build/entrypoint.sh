#!/bin/bash

case $_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET in
"geth.dnp.dappnode.eth")
    HTTP_RPC="http://geth.dappnode:8545"
    ;;
"nethermind.public.dappnode.eth")
    HTTP_RPC="http://nethermind.public.dappnode:8545"
    ;;
"erigon.dnp.dappnode.eth")
    HTTP_RPC="http://erigon.dappnode:8545"
    ;;
"besu.public.dappnode.eth")
    HTTP_RPC="http://besu.public.dappnode:8545"
    ;;
*)
    echo "Unknown value for _DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET: $_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET"
    HTTP_RPC=$_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET
    ;;
esac

exec nitro --l1.url=$HTTP_RPC \
    --l2.chain-id=42161 \
    --http.addr="0.0.0.0" \
    --http.corsdomain "*" \
    --http.vhosts "*" \
    $EXTRA_OPTS
