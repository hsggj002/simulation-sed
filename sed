#!/usr/bin/env python
#-*- coding:utf-8 -*-
import sys

old=sys.argv[1]
new=sys.argv[2]
files=sys.argv[3]
f=open(files,'r+')
data = f.read()
if old in data:
    data = data.replace(old, new)
    f.write(data)
    f.close()
    print("The change is Success")
else:
    print('The word is not in the file')

f.close()
f=open(files,'w')
f.write(data)
f.close()
