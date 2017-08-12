Command-line user interface
===========================

To ask node using the command line, run the following command: python3 commands.py [command]
You can evoke several Bismuth functions using the demo **commands.py** to get standard output or you can write your own interface based on the following functions.

| [diffget]
| Returns the current difficulty after sending "diffget" to node.

| [balanceget (address)]
| Returns balance (including mempool) of an address given as the first argument.

| [mpget]
| Returns current unconfirmed transactions in the mempool

| [blocklast]
| Returns the last confirmed block from the ledger

| [keygen]
| Generates a new address. Returns a list with three values: Private key, public key, address

| [blockget(desired block)]
| Returns a given block