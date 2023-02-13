# Arbitrum Nitro Full Node for DappNode

This repo allows you to run a Aribtrum full node on [DappNode](https://twitter.com/dappnode). I'll support this repo until DappNode's team decide to support it officially.

## Installation Prerequisites

You'll need a L1 ETH node. No need to host it yourself, but if you do, you'll need a full Ethereum Mainnet Stack.
If you don't want to host it yourself be sure to update the ETH_RPC_URL inside config. By default it uses `http://geth.dappnode:8545`.

## Running Arbitrum Nitro Node

If this is your first time starting this Arbitrum One Nitro Node, go to the config tab and add `--init.url=https://snapshot.arbitrum.io/mainnet/nitro.tar` to the EXTRA_OPTS field in the config tab of the package.
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
