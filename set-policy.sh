#!/bin/bash

. /opt/mqm/bin/setmqenv -s

echo "Set AMS policy for Confidentiality"
setmqspl -m QM1 -p CONFIDENTIALITY.Q -r "CN=fred,O=IBM,L=Melbourne,ST=Victoria,C=AU" -e AES256
dspmqspl -m QM1 -p CONFIDENTIALITY.Q

echo ""
echo "Set AMS policy for Integrity"
setmqspl -m QM1 -p INTEGRITY.Q -a "CN=alice,O=IBM,L=Melbourne,ST=Victoria,C=AU" -s SHA256
dspmqspl -m QM1 -p INTEGRITY.Q

echo ""
echo "Set AMS policy for Privacy"
setmqspl -m QM1 -p PRIVACY.Q -r "CN=fred,O=IBM,L=Melbourne,ST=Victoria,C=AU" -a "CN=alice,O=IBM,L=Melbourne,ST=Victoria,C=AU" -e AES256 -s SHA256
dspmqspl -m QM1 -p PRIVACY.Q
