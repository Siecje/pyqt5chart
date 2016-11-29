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

```shell
(venv) $ strace python example.py
# ... lines removed
close(9)                                = 0
close(8)                                = 0
brk(0x275c000)                          = 0x275c000
brk(0x277d000)                          = 0x277d000
brk(0x279e000)                          = 0x279e000
brk(0x27bf000)                          = 0x27bf000
brk(0x27e0000)                          = 0x27e0000
brk(0x2801000)                          = 0x2801000
readlink("/proc/self/exe", "/usr/bin/python3.5", 4096) = 18
open("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf", O_RDONLY) = 8
fcntl(8, F_SETFD, FD_CLOEXEC)           = 0
fstat(8, {st_mode=S_IFREG|0644, st_size=756072, ...}) = 0
mmap(NULL, 756072, PROT_READ, MAP_PRIVATE, 8, 0) = 0x7feae6348000
close(8)                                = 0
--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0} ---
+++ killed by SIGSEGV +++
fish: “strace python example.py” terminated by signal SIGSEGV (Address boundary error)

```

fish is my shell.

```shell
$ pwd
/home/siecje/Desktop/pyqt5chart/venv/lib/python3.5/site-packages/PyQt5/Qt/lib
$ ls -la
total 159492
drwxr-xr-x 2 siecje siecje     4096 Nov 29 13:03 ./
drwxr-xr-x 8 siecje siecje     4096 Nov 29 13:03 ../
-rwxr-xr-x 1 siecje siecje 25047100 Nov 29 13:03 libicudata.so.56*
-rwxr-xr-x 1 siecje siecje  3374854 Nov 29 13:03 libicui18n.so.56*
-rwxr-xr-x 1 siecje siecje  2070162 Nov 29 13:03 libicuuc.so.56*
-rwxr-xr-x 1 siecje siecje   832712 Nov 29 13:03 libQt5Bluetooth.so.5*
-rwxr-xr-x 1 siecje siecje  1330968 Nov 29 13:03 libQt5Charts.so.5*
-rwxr-xr-x 1 siecje siecje  1046792 Nov 29 13:03 libQt5CLucene.so.5*
-rwxr-xr-x 1 siecje siecje  5339752 Nov 29 13:03 libQt5Core.so.5*
-rwxr-xr-x 1 siecje siecje   527104 Nov 29 13:03 libQt5DBus.so.5*
-rwxr-xr-x 1 siecje siecje  5292464 Nov 29 13:03 libQt5Designer.so.5*
-rwxr-xr-x 1 siecje siecje  5909528 Nov 29 13:03 libQt5Gui.so.5*
-rwxr-xr-x 1 siecje siecje   595640 Nov 29 13:03 libQt5Help.so.5*
-rwxr-xr-x 1 siecje siecje   554248 Nov 29 13:03 libQt5Location.so.5*
-rwxr-xr-x 1 siecje siecje  1096240 Nov 29 13:03 libQt5Multimedia.so.5*
-rwxr-xr-x 1 siecje siecje   124592 Nov 29 13:03 libQt5MultimediaWidgets.so.5*
-rwxr-xr-x 1 siecje siecje  1432320 Nov 29 13:03 libQt5Network.so.5*
-rwxr-xr-x 1 siecje siecje   324304 Nov 29 13:03 libQt5Nfc.so.5*
-rwxr-xr-x 1 siecje siecje   356208 Nov 29 13:03 libQt5OpenGL.so.5*
-rwxr-xr-x 1 siecje siecje   257976 Nov 29 13:03 libQt5Positioning.so.5*
-rwxr-xr-x 1 siecje siecje   442832 Nov 29 13:03 libQt5PrintSupport.so.5*
-rwxr-xr-x 1 siecje siecje  4156520 Nov 29 13:03 libQt5Qml.so.5*
-rwxr-xr-x 1 siecje siecje  4125768 Nov 29 13:03 libQt5Quick.so.5*
-rwxr-xr-x 1 siecje siecje    67168 Nov 29 13:03 libQt5QuickWidgets.so.5*
-rwxr-xr-x 1 siecje siecje   251048 Nov 29 13:03 libQt5Sensors.so.5*
-rwxr-xr-x 1 siecje siecje   100104 Nov 29 13:03 libQt5SerialPort.so.5*
-rwxr-xr-x 1 siecje siecje   284144 Nov 29 13:03 libQt5Sql.so.5*
-rwxr-xr-x 1 siecje siecje   341248 Nov 29 13:03 libQt5Svg.so.5*
-rwxr-xr-x 1 siecje siecje   220544 Nov 29 13:03 libQt5Test.so.5*
-rwxr-xr-x 1 siecje siecje   117536 Nov 29 13:03 libQt5WebChannel.so.5*
-rwxr-xr-x 1 siecje siecje 84967128 Nov 29 13:03 libQt5WebEngineCore.so.5*
-rwxr-xr-x 1 siecje siecje   226768 Nov 29 13:03 libQt5WebEngineWidgets.so.5*
-rwxr-xr-x 1 siecje siecje   169832 Nov 29 13:03 libQt5WebSockets.so.5*
-rwxr-xr-x 1 siecje siecje  6614408 Nov 29 13:03 libQt5Widgets.so.5*
-rwxr-xr-x 1 siecje siecje    15368 Nov 29 13:03 libQt5X11Extras.so.5*
-rwxr-xr-x 1 siecje siecje  1365560 Nov 29 13:03 libQt5XcbQpa.so.5*
-rwxr-xr-x 1 siecje siecje  4014120 Nov 29 13:03 libQt5XmlPatterns.so.5*
-rwxr-xr-x 1 siecje siecje   242744 Nov 29 13:03 libQt5Xml.so.5*
```
