### Linux compile

### Mac compile
/usr/local/homebrew/bin/cython --embed sample.py
gcc -Os -I'/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/include/python3.9/' -L/usr/local/homebrew/Cellar/python@3.9/3.9.9/Frameworks/Python.framework/Versions/3.9/lib/ -lpython3.9 sample.c -o sample.macosx -v