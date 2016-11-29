```shell
$ python3.5 -m venv venv
$ source venv/bin/activate
(venv) $ pip freeze
pkg-resources==0.0.0
You are using pip version 8.1.1, however version 9.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
(venv) $ pip install pip --upgrade
Collecting pip
  Using cached pip-9.0.1-py2.py3-none-any.whl
Installing collected packages: pip
  Found existing installation: pip 8.1.1
    Uninstalling pip-8.1.1:
      Successfully uninstalled pip-8.1.1
Successfully installed pip-9.0.1
(venv) $ pip freeze
pkg-resources==0.0.0
(venv) $ pip install PyQtChart
Collecting PyQtChart
  Using cached PyQtChart-5.7-cp35-cp35m-manylinux1_x86_64.whl
Collecting PyQt5 (from PyQtChart)
  Using cached PyQt5-5.7-cp35-cp35m-manylinux1_x86_64.whl
Collecting sip (from PyQt5->PyQtChart)
  Using cached sip-4.18.1-cp35-cp35m-manylinux1_x86_64.whl
Installing collected packages: sip, PyQt5, PyQtChart
Successfully installed PyQt5-5.7 PyQtChart-5.7 sip-4.18.1
(venv) $ python example.py
Segmentation fault
```
