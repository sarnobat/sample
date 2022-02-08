###
### Linux compile
###

# Don't use /usr/bin/cython3 or /usr/bin/cython, use cython.py
python3 /media/sarnobat/homes/sarnobat/.local/lib/python3.8/site-packages/cython.py --directive language_level=3 --embed sample.py
gcc -Os -I/usr/include/python3.8/ sample.c  -lpython3.8 -o  sample.linux
sudo find /usr | sample.linux -p 0.001

#/usr/include/python3.8/Python.h
#/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/libpython3.8.a

###
### Mac compile
###

# 1. a) either
/usr/local/homebrew/bin/cython --embed sample.py
# 1. b) or
python3 /usr/local/homebrew/lib/python3.9/site-packages/cython.py  --directive language_level=3  --embed sample.py
# 2.
gcc -Os -I'/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/include/python3.9/' -L/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/lib/ -lpython3.9 sample.c -o sample.macosx -v
#/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/lib/libpython3.9.dylib
sudo find /usr | ./sample.macosx -p 1