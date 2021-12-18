#!/bin/bash

dev_fr=192.168.194.134
dev_be=192.168.194.2
dev_dmz=192.168.194.231
qa_fr=192.168.194.186
qa_be=192.168.194.177
qa_dmz=192.168.194.203
prod_fr=192.168.194.222 
prod_be=192.168.194.195
prod_dmz=192.168.194.229

if [ $1 == "devfr" ]; then

   ping -q -c2 $dev_fr > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "devbe" ]; then

   ping -q -c2 $dev_be > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "devdmz" ]; then

   ping -q -c2 $dev_dmz > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "qafr" ]; then

   ping -q -c2 $qa_fr > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "qabe" ]; then

   ping -q -c2 $qa_be > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "qadmz" ]; then

   ping -q -c2 $qa_dmz > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "prodfr" ]; then

   ping -q -c2 $prod_fr > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "prodbe" ]; then

   ping -q -c2 $prod_be > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi
if [ $1 == "proddmz" ]; then

   ping -q -c2 $prod_dmz > /dev/null

   if [ $? -eq 0 ]; then
		echo "Online"
		echo
		echo "#00FF00"
   else
		echo "Offline"
		echo
		echo "#ff0000"
   fi
fi


