#!/bin/sh

#Create by Kingxl
#http://itjoy.org
#
#Combines the libraries into a single one
#Note:Change the library name by yourself.
#


#Create library name.
LIB_NAME="lib.a"

LIBS=`find *.a`

#Get *.o file
for LIB in $LIBS; do
	ar -x $LIB
done

OBJS=`find *.o`

echo "******Create $LIB_NAME******"

#Create new *.a
for OBJ in $OBJS; do
	ar -r $LIB_NAME $OBJ
done

#Clean obj file
rm -rf *.o  __.SYMDEF\ SORTED

echo "****** Ok, Merge complete ******"