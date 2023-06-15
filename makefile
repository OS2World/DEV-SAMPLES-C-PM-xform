# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : xform.exe

xform.exe : xform.obj xform.def xform.res 
	gcc -Zomf xform.obj xform.def xform.res -o xform.exe
	wrc xform.res

xform.obj : xform.c xform.h
	gcc -Wall -Zomf -c -O2 xform.c -o xform.obj

xform.res : xform.rc 
	wrc -r xform.rc

clean :
	rm -rf *exe *res *obj *lib