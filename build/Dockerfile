ARG UPSTREAM_VERSION

FROM offchainlabs/nitro-node:${UPSTREAM_VERSION}

USER root
RUN mkdir -p /home/user/.arbitrum \
 && chown -R user /home/user/.arbitrum

USER user

ENTRYPOINT nitro --parent-chain.connection.url "${ETH_RPC_URL}" \
  --parent-chain.blob-client.beacon-url="https://checkpoint-sync.dappnode.io"
  --chain.name=arb1 \
  --http.addr=0.0.0.0 \
  --http.corsdomain=* \
  --http.vhosts=* \
  --ws.port=8548 \
  --ws.origins=* \
  --ws.addr=0.0.0.0 \
  $EXTRA_OPTS
