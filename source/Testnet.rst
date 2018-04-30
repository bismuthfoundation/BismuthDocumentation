Testnet
============

Testnet for Bismuth is running on port 2829, please open ports to it in order to maximize connectivity,

* How to participate
| In order to connect to the testnet network, you need to configure the following parameters in your config file. To create a custom config file, copy config.txt into config_custom.txt
| Then, change the following variables to:

| version=testnet
| version_allow=testnet

| If you are getting connections from the mainnet, check that your files correspond:

| peers.txt and suggested_peers.txt should only contain nodes with port 5658
| peers_test.txt and suggested_peers_test.txt should only contain nodes with port 2829

| Delete any nodes that do not fit these rules from the files
