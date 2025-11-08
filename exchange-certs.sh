#!/bin/bash

. /opt/mqm/bin/setmqenv -s

sender_folder=sender
sender_label=alice
sender_keystore=alice.kdb
receiver_folder=receiver
receiver_label=fred
receiver_keystore=fred.kdb

echo "Add sender certificate <${sender_folder}/${sender_label}.pem> to receiver keystore <${receiver_folder}/${receiver_keystore}>"
runmqakm -cert -add -db "${receiver_folder}/${receiver_keystore}" -stashed -label CN=${sender_label} -file "${sender_folder}/${sender_label}.pem"

echo "Add receiver certificate <${receiver_folder}/${receiver_label}.pem> to sender keystore <${sender_folder}/${sender_keystore}>"
runmqakm -cert -add -db "${sender_folder}/${sender_keystore}" -stashed -label CN=${receiver_label} -file "${receiver_folder}/${receiver_label}.pem"
