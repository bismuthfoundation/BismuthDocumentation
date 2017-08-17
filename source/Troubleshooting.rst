Troubleshooting
===============

If you have problems running a recent version of Bismuth, please go through the following.

- If the node crashes right after start, make sure there is no node running in the background as a process
- If you do not get any connections, make sure your config.txt file has a proper protocol version (which corresponds to the latest code). If you are not sure, use the default config.txt for testing.
- Make sure that your clock is synchronized under all circumstances (for example with `time.nist.gov`_ ), emergency difficulty switch uses a timer
- If a hardfork happened recently, make sure your ledger is not desynchronized i.e. by running a different difficulty algorithm past the last announced hardfork block. If you are not sure, you can download the ledger from the repository.
- If you are desynchronized, it can happen that the other nodes ban you for block spamming or submitting blocks from a different, forked chain. In that case, you need to ask someone to restart their node. They must have forwarded ports.
- Installer is currently unsupported for Windows 7. If you want to run it Bismuth, you need to run it in Python directly.
- For better overview of what is happening, you may chose to switch **debug_level=WARNING** to **debug_level=INFO** and **debug=0** to **debug=1** in config.txt
- If too many peers are getting removed from peers.txt, you may chose to switch **purge=1** to **purge=0** in config.txt

.. _time.nist.gov: http://time.nist.gov