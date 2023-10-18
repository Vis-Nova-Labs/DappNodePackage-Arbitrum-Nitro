# Arbitrum Nitro Full Node for Dappnode

This repo allows you to run an Aribtrum One Nitro Rolllup Full Node on [Dappnode](https://dappnode.com). ~~I (0xAtum) will support this repo until Dappnode's team decides to support it officially.~~

## Installation Prerequisites

You'll need access to synced ETH node.
No need to host it yourself, but if you do, you'll need a full Ethereum Mainnet Stack (Both Execution and Consensus Layer Clients) run locally.
If you don't want to host a full stack Ethereum Node yourself be sure to update the ETH_RPC_URL in the Config Tab. By default it uses `http://geth.dappnode:8545`.

## Running an Arbitrum Nitro Node

If this is your first time starting this Arbitrum One Nitro Node, go to the config tab and add `--init.url="https://snapshot.arbitrum.foundation/arb1/nitro-pruned.tar"` to the EXTRA_OPTS field in the config tab of the package.
This will download the Genesis Database for you.
Once the initial database has been downloaded, you can remove the flag.

### [Install Link](http://my.dappnode/#/installer/arbitrum-nitro.public.dappnode.eth)

## Specs

Average on a period of 24 hours

| Spec | Arbitrum Nitro Full Node | GETH Full Node |
|--|--|--|
| Storage (Sep 3, 2022) | 51 GB | 644 GB|
| CPU Usage | 0.31% | 5% |
| Memory Usage | 893 MB | 6.48 GB |
| Cached Memory Usage | 6.14 GB | 7.36 GB
