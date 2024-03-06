#!/bin/bash

#Function to check if database needs to be initialized
if [ ! -d /home/user/.arbitrum/arb1/nitro/l2chaindata/ancient ]; then
    echo "Downloading initial snapshot, this may take a while..."
    # Concatenate EXTRA_OPTS with the --init.url flag
    EXTRA_OPTS="--init.url=https://snapshot.arbitrum.foundation/arb1/nitro-pruned.tar ${EXTRA_OPTS}"
fi

case $_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET in
"geth.dnp.dappnode.eth")
    EL_API="http://geth.dappnode:8545"
    ;;
"nethermind.public.dappnode.eth")
    EL_API="http://nethermind.public.dappnode:8545"
    ;;
"erigon.dnp.dappnode.eth")
    EL_API="http://erigon.dappnode:8545"
    ;;
"besu.public.dappnode.eth")
    EL_API="http://besu.public.dappnode:8545"
    ;;
*)
    echo "Unknown value for _DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET: $_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET"
    EL_API=$_DAPPNODE_GLOBAL_EXECUTION_CLIENT_MAINNET
    ;;
esac

case $_DAPPNODE_GLOBAL_CONSENSUS_CLIENT_MAINNET in
"prysm.dnp.dappnode.eth")
    CL_API="http://beacon-chain.prysm.dappnode:3500"
    ;;
"lighthouse.dnp.dappnode.eth")
    CL_API="http://beacon-chain.lighthouse.dappnode:3500"
    ;;
"nimbus.dnp.dappnode.eth")
    CL_API="http://beacon-validator.nimbus.dappnode:4500"
    ;;
"teku.dnp.dappnode.eth")
    CL_API="http://beacon-chain.teku.dappnode:3500"
    ;;
"lodestar.dnp.dappnode.eth")
    CL_API="http://beacon-chain.lodestar.dappnode:3500"
    ;;
*)
    echo "Unknown value for _DAPPNODE_GLOBAL_CONSENSUS_CLIENT_MAINNET: $_DAPPNODE_GLOBAL_CONSENSUS_CLIENT_MAINNET"
    CL_API=$_DAPPNODE_GLOBAL_CONSENSUS_CLIENT_MAINNET
    ;;
esac
    
exec nitro --parent-chain.connection.url="${ETH_API}" \
    --parent-chain.blob-client.beacon-url="${BEACON_API}" \
    --chain.name=arb1 \
    --http.addr=0.0.0.0 \
    --http.corsdomain=* \
    --http.vhosts=* \
    --ws.port=8548 \
    --ws.origins=* \
    --ws.addr=0.0.0.0 \
    $EXTRA_OPTS
