Requirements
============

How to run without the executables in Windows:

| Download and install ActivePython_
| Run "pip3 install pysocks"
| Open ...\\Lib\\site-packages\\Crypto\\Random\\OSRNG\\nt.py
| and change "import winrandom" to "from . import winrandom"
| Open node.py, optionally gui.py or miner.py

| How to run in Linux:

| sudo apt install python-pip
| sudo pip install pillow pyqrcode pypng pyinstaller web.py pycrypto simple-crypt pysocks
| sudo apt-get install python-tk
| Open node.py, optionally gui.py or miner.py

| If you want to view_ your balance without GUI, you can use the GitHub script:
| If you want to send_ coins without GUI, you can use the GitHub script, details at the top of the file

.. _ActivePython: https://www.activestate.com/activepython/downloads/thank-you?dl=http://downloads.activestate.com/ActivePython/releases/3.5.3.3505/ActivePython-3.5.3.3505-win64-x64-402859.exe
.. _send: https://github.com/hclivess/Bismuth/blob/master/send_nogui.py
.. _view: https://github.com/hclivess/Bismuth/blob/master/balance_nogui.py