#!/bin/sh

#Create by Kingxl
#http://itjoy.org
#
#Combines the libraries into a single one
#Note:Change the library name by yourself.
#


#Create library name.
LIB_NAME="lib.a"

#Get obj file
for LIB in *.a; do
	ar -x $LIB
done

LIB_CREATE=""

for OBJ in *.o; do
	LIB_CREATE="$LIB_CREATE $OBJ "
done

echo "$LIB_CREATE"

#Create new library
ar -r $LIB_NAME $LIB_CREATE

#Clean obj file
rm -rf *.o  __.SYMDEF\ SORTED  __.SYMDEF

echo "****** Ok, Merge complete ******"