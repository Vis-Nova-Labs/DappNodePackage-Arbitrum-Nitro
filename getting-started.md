
# Arbitrum Nitro Node

## Getting Started

If you check the log during the initial download, you'll see `transferred XXXXX / XXXX bytes (X.XX%) [XXX Mbps, -XmXXs remaining]` and then nothing else. It seems like this is stuck but in reality, the messages are just continuing without any jump line (They forgot to add one) you can scroll sideways to see progress and ETAs until the initial DB is downloaded and extracted before the node starts to fully sync up.

### More info

You may want to take a look at [Arbitrum's doc :: Optional-parameters](https://developer.offchainlabs.com/node-running/running-a-node#optional-parameters). There are some interesting parameters that you might want to add into EXTRA_OPTS.
`i.e: --node.archive`
