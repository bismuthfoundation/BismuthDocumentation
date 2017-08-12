Configuration
=============

Bismuth can be configured using **config.txt** file. To keep your custom configuration intact, you can also create **config_custom.txt**, copy the original settings there and adjust them.
Individual lines are explained below:

| port=5658
| Port on which server part of the node is running. As of now, it is not recommended to change this value.

| genesis=4edadac9093d9326ee4b17f869b14f1a2534f96f9c5d7b48dc9acaed
| Genesis address. This value should not be changed.

| verify=0
| Blockchain signature verification. When set to 1, every transaction signature in the blockchain will be verified.

| version=mainnnet0011
| Version of the protocol, if it does not match configuration of other nodes, you will not be able to connect to the network.

| thread_limit=150
| Limit of number of outgoing client threads to be created. Once this limit is reached, node will not accept more incoming connections or attempt to create outgoing connections.

| pool_ip=127.0.0.1
| Change this value to the IP of the pool in case zou are mining with the default miner for a pool. For solo mining, this part can be ignored.

| rebuild_db=0
| Change to 1 to perform database maintenance on startup to save some drive space.

| debug=0
| If configured to 1, you will receive more precise debug messages in the output window. Development feature.

| debug_level=WARNING
| Can be adjusted to INFO in case you want to see what is going on in the background. Development feature.

| purge=1
| When set to 1, deletes all nodes from the peerlist to which node cannot connect on startup.

| pause=6
| Pause between checks for new blocks in seconds. You can increase this value to lower processor usage or lower it to get block updates faster (useful when mining)

| mining_threads=6
| Number of mining threads for the default miner.

| diff_recalc=50000
| Number of cycles the default miner runs before asking node for a new difficulty.

| ledger_path=static/ledger.db
| Path to the ledger. It is recommended to keep this value intact as it is not yet cross-compatible.

| hyperblocks=0
| When set to 1, ledger will compress on each startup, pruning transactions without "keep=1", saving space and increasing operational speed. History older than 10,000 blocks will be lost.

| warning_list_limit=10
| Number of warnings issued to other nodes for misbehavior before banning them.

| tor=0
| Set to 1 if you want to be running node through a Tor proxy

| miner_sync=1
| Default miner will wait until ledger is synced before it starts mining if set to 1. Setting this to 0 can get you banned by other nodes.

| allowed=127.0.0.1,192.168.0.1,any
| List of whitelisted nodes for more computationally demanding tasks and direct block submission. Leave "any" in if you want to accept from all nodes.

| mining_pool=0
| Set to 1 if you want to be using a mining pool with the default miner.

| pool_address=4edadac9093d9326ee4b17f869b14f1a2534f96f9c5d7b48dc9acaed
| Address of the pool if you are mining for it.

| ram=1
| Enable usage of random access memory instead of using drive all the time. Requires memory proportional to the current blockchain size, tolerates hyperblocks.

| pool_percentage=75
| If you are running a default pool, this is the difficulty percentage for accepting shares as compared to the real difficulty.

| node_ip=127.0.0.1
| You can change this IP if you are using a remote node.

