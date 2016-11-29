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
