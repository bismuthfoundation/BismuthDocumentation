Functions
=========

This document is an approximation of what individual functions inside Bismuth do. There are two types of functions, network and local. Most local functions are part of network functions.

| *Server:*
| version
| Receive incoming version, compare it to the local version, answer "notok" in case of mismatch, otherwise answer "ok"

| mempool
| Receive incoming mempool, trigger mempool_merge, select all transactions from local mempool and send them.

| hello
| Select all peers from peers.txt, send "peers", followed by all peers in the local peerlist.

| sendsync
| Send "sync". If database is locked, wait for it to unlock first. If more than 3 peers are syncing, wait for one of them to finish.

| blocksfnd
| Check whether database is locked. If it is not, check if the other node has the lastest block (in consensus opinion list). If it has, send "blockscf" (confirm), otherwise send "blocksrj" (reject).

| blockheight
| Receive block height from the other node, run consensus_add to add it to the consensus list. Select local block height and send it.
| Compare other node's block height with own block height.
|
| If the other node's block height is higher than the local one, send latest block hash
|
| Otherwise if local block height is same or higher, receive block hash.
| Seek the received hash in the local ledger to find out at which block they are at.
| If their and our last block hash match, send "nonewblk", otherwise select a batch of up to 100 blocks after other node's block and send it to them.
| If their block is not found in the local ledger, send "blocknf"

| nonewblk
| The other node does not have a newer block, send "sync" to check again.

| blocknf
| Receive the block hash to delete, check if the other node has the longest chain in the peer consensus list. If they do, trigger blocknf. There, delete a single latest block unless we moved away from it and add 1 warning point to the other node locally.

| block (must be whitelisted)
| Receive a new block from the miner.
| Check if the number of connections is higher than 5, unless in test mode.
| Compare the local height to consensus opinion list.
| If the local block height is at least the maximum from the opinion list -3 and database is unlocked, accept the block from the miner.

| blocklast (must be whitelisted)
| Select the last block from the local ledger and send it to the other node

| blockget (must be whitelisted)
| Receive block number from the other node, open local ledger and select the block, send it back to the other node.

| mpinsert (must be whitelisted)
| Receive mempool data and trigger mempool_merge function to merge them into local mempool.

| balanceget (must be whitelisted)
| Receive address, calculate the current balance of the given address, including mempool and send them to the other node.

| mpget (must be whitelisted)
| Select all transactions from the local mempool and send them to the other node.

| keygen (must be whitelisted, only use with the nodes you trust)
| Generate private key, public key and address, send them back to the other node. Then empty local variables.

| addlist (must be whitelisted)
| Receive an address. Open local ledger, select all transactions which concern the given address and send them back to the other node.

| txsend (must be whitelisted, only use with the nodes you trust)
| Receive timestamp, private key, amount, pruning configuration, openfield from the other node.
| Construct transaction and insert it into mempool using mempool_merge.

| *Client:*
| Client starts by sending "version" to the other node

| ok
| The other node confirmed that the versions match, otherwise raise error and terminate local client.

| peers
| Receive a list of peers from the remote node. If peers are currently not syncing and remote peers are not stored locally already, check connectivity to them and save them if connectible.

| sync
| Reset operation timeout. If we are not syncing from up to 3 peers yet, send "blockheight" to the other node.
| Select latest blockheight from the local node and send it to the other node.
| Receive block height of the other node.
| If the other node has a lower block height, receive their latest block hash (not used anymore).
| Add the remote node's block height to the consensus opinion list.
|


| blocknf
| blocksfnd
| nonewblk

| *List of functions under development:*
| addvalidate
| statusget
| connget
| diffget