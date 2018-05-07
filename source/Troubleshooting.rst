Troubleshooting
===============

If you have problems running a recent version of Bismuth, please go through the following.

- If the node crashes right after start, make sure there is no node running in the background as a process
- If you do not get any connections, make sure your config.txt file has a proper protocol version (which corresponds to the latest code). If you are not sure, use the default config.txt for testing.
- Make sure that your clock is synchronized under all circumstances (for example with `time.nist.gov`_ ), emergency difficulty switch uses a timer
- If a hardfork happened recently, make sure your ledger is not desynchronized i.e. by running a different difficulty algorithm past the last announced hardfork block. If you are not sure, you can download the ledger from the repository.
- If you are desynchronized, it can happen that the other nodes ban you for block spamming or submitting blocks from a different, forked chain. In that case, you need to ask someone to restart their node. They must have forwarded ports.
- For better overview of what is happening, you may chose to switch **debug_level=WARNING** to **debug_level=INFO**, **debug=0** to **debug=1** in config.txt and **terminal_output=False** to **terminal_output=True**
- If too many peers are getting removed from peers.txt, you may chose to switch **purge=1** to **purge=0** in config.txt

| There is a known issue with OS-level locale for Linux users. Bismuth requires **LANG=en_US.UTF-8** to run properly, it will have issues with any other locale, i.e. **POSIX**
| Here is the entire locale configuration:

| LANG=en_US.UTF-8
| LANGUAGE=
| LC_CTYPE="en_US.UTF-8"
| LC_NUMERIC="en_US.UTF-8"
| LC_TIME="en_US.UTF-8"
| LC_COLLATE="en_US.UTF-8"
| LC_MONETARY="en_US.UTF-8"
| LC_MESSAGES="en_US.UTF-8"
| LC_PAPER="en_US.UTF-8"
| LC_NAME="en_US.UTF-8"
| LC_ADDRESS="en_US.UTF-8"
| LC_TELEPHONE="en_US.UTF-8"
| LC_MEASUREMENT="en_US.UTF-8"
| LC_IDENTIFICATION="en_US.UTF-8"
| LC_ALL=

.. _time.nist.gov: http://time.nist.gov
