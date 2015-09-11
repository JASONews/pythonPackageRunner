 pythonPackageRunner
==============

##A Brief Description
A simple shell script that can facilitate user run single python file in a package directory from anywhere 

##Usage
Firstly Change the mode of pypkg file, delete the extention if you perfer to and move it to your bash file load directory. In my case, it is /usr/local/bin/
```shell
$chmod 764 pypkg
$mv pypkg /usr/local/bin/ #$PATH or /your/load/path/
```

Then you are all set! Try run a python file from anywhere your want!
```shell
pypkg hello.py
```