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
| Check whether database is locked. If it is not, check if the other node has the lastest block (in consensus opinion list). If it has, send "blockscf" (confirm), otherwise send "blocksrj" (reject)

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
| Receive the block hash to delete, check if the other node has the longest chain in the peer consensus list. If they do, trigger blocknf. There, delete a single latest block unless we moved away from it.

| block
| blocklast
| blockget
| mpinsert
| balanceget
| mpget
| keygen
| addlist
| txsend

| *Client:*
| ok
| peers
| sync
| blocknf
| blocksfnd
| nonewblk

| *List of functions under development:*
| addvalidate
| statusget
| connget
| diffget