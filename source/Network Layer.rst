Network Layer
=============

The network layer of Bismuth is based on Python's socketserver_. Data transferred over the network are encoded with picklemagic_ to make sure all strings are properly formatted and transferable.

.. _socketserver: https://docs.python.org/3/library/socketserver.html
.. _picklemagic: https://github.com/CensoredUsername/picklemagic