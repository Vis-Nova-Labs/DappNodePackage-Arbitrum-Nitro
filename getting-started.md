
# Arbitrum One Nitro Node Getting Started

If this is your first time starting this Arbitrum One Nitro Node, you'll need to initialize the DB with pre-nitro blocks for Arbitrum One.
WHen starting to sync a new install or after wiping the volume of the package it will automatically download the initial database for you before beginning full node sync.

## Note

If you check the log during the initial download, you'll see `transferred XXXXX / XXXX bytes (X.XX%) [XXX Mbps, -XmXXs remaining]` and then nothing else.
It seems like this is stuck but in reality, the messages are just continuing without any jump line (They forgot to add one).
You can scroll sideways in the terminal to see progress and ETAs until the initial DB is downloaded and extracted.
After this step completes, the node starts to fully sync up and acts normally with logs continuing with new lines.

### More info

You may want to take a look at [Arbitrum's documentation](https://docs.arbitrum.io/node-running/how-tos/running-a-full-node#optional-parameters).
There are some interesting parameters that you may want to add into the EXTRA_OPTS field.

i.e: `--execution.caching.archive` for a full archive node, or `--init.prune="full"` to prune blocks older than the latest 128 blocks, this will cut storage space roughly in half.
But pruning has other consequences if you need data older than that for example relaying this Chain with Pokt or your use case requires block data older than the previous 128 blocks.

Finally there is no protocol level incentive to run a Arbitrum One Nitro Full Node like this package.
However if you are building on Arbitrum One and want a local node or are using Pokt to relay chains this may be something you want to use.
Note: this is not a validator node, you can look at the link to the Arbitrum Docs above to see what a validator node requires.
We do not have these enabled as Arbitrum Validators are not permissionless like ETH, GNO, LUKSO, and several ETH testnets, but is allowlist enforced by the protocol.
Thus it is not really a probable use case for the very vast majority of Dappnode users.
