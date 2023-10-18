#!/bin/bash

#Function to check if database needs to be initialized
if [ ! -f /home/user/.arbitrum/arb1/nitro/l2chaindata/ancient ]; then
    echo "Downloading initial snapshot, this may take a while..."
    # Concatenate EXTRA_OPTS with the --init.url flag
    EXTRA_OPTS="--init.url=https://snapshot.arbitrum.foundation/arb1/nitro-pruned.tar ${EXTRA_OPTS}"
fi

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
    --http.addr=0.0.0.0 \
    --http.corsdomain=* \
    --http.vhosts=* \
    --ws.port=8548 \
    --ws.origins=* \
    --ws.addr=0.0.0.0 \
    $EXTRA_OPTS
