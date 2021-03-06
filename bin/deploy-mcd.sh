#!/bin/bash

. /home/maker/.nix-profile/etc/profile.d/nix.sh

pushd src/deployment-scripts

export TESTNET_HOST="parity"
export KEYSTORE_PATH=/testchain-data/keys/DevelopmentChain
export ETH_FROM=0x00a329c0648769A73afAc7F9381E08FB43dBEA72

. lib/setup-env.sh
nix run -f /home/maker/src/deployment-scripts -c deploy-testchain.sh

popd
