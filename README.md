# Getting started with MQ AMS

This repo contains instructions to setup MQ Advanced Messaging Security (AMS). There are three Quality of Protection

- Confidentiality (Encryption only)
- Integrity (Signing only)
- Privacy (Encryption and Signing)

The setup assumes that you have install MQ using MQ ansible playbook found [here](https://github.com/ibm-messaging/mq-ansible). I have forked and added a quick start guide on how to use this - as documented [here](https://github.com/khongks/mq-ansible/blob/main/Quick-Start.md). I am using the queue manager QM1 that is created as part of the default playbook.

## Architecture Diagram



1. Create a file set-mqserver.sh
   ```
   export MQSERVER='DEV.APP.SVRCONN/TCP/yourhostname(1414)'
   ```



## References:

- [Protecting Message Data Implementing MQ AMS End-to-End Message Security](https://www.ibm.com/support/pages/protecting-message-data-implementing-mq-ams-end-end-message-security)