### Linux compile
cython3 --embed sample.py
gcc -Os -I'/usr/include/python3.8/' -L/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/ -lpython3.8 sample.c -o sample.linux -v

#/usr/include/python3.8/Python.h
#/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/libpython3.8.a

### Mac compile
/usr/local/homebrew/bin/cython --embed sample.py
gcc -Os -I'/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/include/python3.9/' -L/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/lib/ -lpython3.9 sample.c -o sample.macosx -v
#/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/lib/libpython3.9.dylib