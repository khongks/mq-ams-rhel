#!/bin/bash

. /opt/mqm/bin/setmqenv -s

label=${1}

d="$HOME/.mqs"
keydb=./${label}.kdb
mkdir -p $d
rm $d/${label}-keystore.conf
dn="C=AU,ST=Victoria,L=Melbourne,O=IBM,CN=${label}"

pw=passw0rd

runmqakm -keydb -create -db ${keydb} -pw ${pw} -stash

runmqakm -cert -create  -db ${keydb} -pw ${pw}  -label ${label} -dn $dn -default_cert yes
runmqakm -cert -extract -db ${keydb} -pw ${pw}  -label ${label} -target ${label}.pem  -format ascii 
chmod 600 ${keydb}

echo "cms.keystore = ${keydb}" > $d/${label}-keystore.conf
echo "cms.certificate = ${label}" >> $d/${label}-keystore.conf 
chmod 777 $d/${label}-keystore.conf 
cat $d/${label}-keystore.conf 
