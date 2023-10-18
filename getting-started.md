
# Arbitrum Nitro Node

## Getting Started

If this is your first time starting this Arbitrum One Nitro Node, go to the config tab and add `--init.url="https://snapshot.arbitrum.foundation/arb1/nitro-pruned.tar"` to the EXTRA_OPTS field. This will download the initial database for you.
Once the initial database has been downloaded, you can remove the flag.

### Important

Arbitrum Nitro is very new, so expect some issue with syncing, corrupted arbitrum-data on crashes, and other unexpected random issues.

#### Note

If you check the log during the initial download, you'll see `transferred XXXXX / XXXX bytes (X.XX%) [XXX Mbps, -XmXXs remaining]` and then nothing else. It seems like this is stuck but in reality, the messages are just continuing without any jump line (They forgot to add one).

### More info

You may want to take a look at [Arbitrum's doc :: Optional-parameters](https://developer.offchainlabs.com/node-running/running-a-node#optional-parameters). There are some interesting parameters that you might want to add into EXTRA_OPTS.
`i.e: --node.archive`
