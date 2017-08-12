Transaction Structure
=====================

This document defines the transaction structure for Bismuth. Transactions are generally strings or lists of strings. When syncing multiple blocks at once, in lists of lists. Position in the list tells the node what type of data it is currently dealing with. In the database, every part of the transaction has an individual column.

There are two types of transaction in Bismuth, ledger transactions (confirmed) and mempool transactions (unconfirmed). Both of these have different length.

Mempool transaction:

1. Timestamp (timestamp)
2. Source address (address)
3. Recipient address (recipient)
4. Amount to be sent (amount)
5. Base64 version of signature (signature)
6. Base64 version of the public key (public_key)
7. Pruning resilience (keep)
8. Additional data (openfield)

Here is an example of a raw singleton transaction:

[('1502477945.60', '4edadac9093d9326ee4b17f869b14f1a2534f96f9c5d7b48dc9acaed', '86cbc69e9f8522c58f5c97fd13e7a5634ea6012207984c54bf83fc7d', '1.00000000', 'rrk...HNk=', 'LS0...Q==', '0', 'test')]

* timestamp = 1502477945.60
* address = 4edadac9093d9326ee4b17f869b14f1a2534f96f9c5d7b48dc9acaed
* amount = 1.00000000
* siganture (abbreviated) = rrk...HNk=
* public_key (abbreviated) = LS0...Q==
* keep = 0
* openfield = test

When saved to the ledger, **additional fields** are added, and transaction is stored in the following format:

1. **Block height (block_height)**
2. Timestamp (timestamp)
3. Source address (address)
4. Recipient address (recipient)
5. Amount to be sent (amount)
6. Base64 version of signature (signature)
7. Base64 version of the public key (public_key)
8. **Block hash (block_hash)**
9. **Fee (fee)**
10. **Mining reward (reward)**
11. Pruning resilience (keep)
12. Additional data (openfield)

Unlike Bitcoin, Bismuth does not have transaction hashes. However, transaction positioning is enforced by the block hash. Transaction positions can be extracted from blocks with positional arguments.