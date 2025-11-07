#!/bin/bash

. /opt/mqm/bin/setmqenv -s

echo "AMS policy for Confidentiality"
dspmqspl -m QM1 -p CONFIDENTIALITY.Q

echo ""
echo "AMS policy for Integrity"
dspmqspl -m QM1 -p INTEGRITY.Q

echo ""
echo "AMS policy for Privacy"
dspmqspl -m QM1 -p PRIVACY.Q
