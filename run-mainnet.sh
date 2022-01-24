#!/usr/bin/env bash
set -euo pipefail

WALLET_EXE="cabal run cardano-wallet:exe:cardano-wallet --"

SOCKET="/tmp/cardano.sock"
DB="wallet.db"

PORT=8090  # Default port

$WALLET_EXE serve \
  --node-socket "$SOCKET" \
  --database "$DB" \
  --mainnet \
  --listen-address 0.0.0.0 \
  --port $PORT \
  +RTS -N4 -RTS
