#!/bin/bash

. /opt/mqm/bin/setmqenv -s

sender_label=alice
sender_keystore=alice.kdb
receiver_label=fred
receiver_keystore=fred.kdb

echo "Add sender certificate <${sender_label}.pem> to receiver keystore <${receiver_keystore}>"
runmqakm -cert -add -db "${receiver_keystore}" -stashed -label CN=${sender_label} -file "${sender_label}.pem"

echo "Add receiver certificate <${receiver_label}.pem> to sender keystore <${sender_keystore}>"
runmqakm -cert -add -db "${sender_keystore}" -stashed -label CN=${receiver_label} -file "${receiver_label}.pem"
