Node Structure
==============

Bismuth node consists of two basic components: server and client.

Role of the server is to perform basic startup operations, to accept incoming connections if the node's ports are forwarded and to run the connection manager, which then starts individual clients to connect to other nodes.
In the logs, server is identified as **handle** and described as **incoming**, while client is identified as **worker** and described as **outgoing**.