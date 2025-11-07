#!/bin/bash

. /opt/mqm/bin/setmqenv -s

setmqaut -m QM1 -p alice -t qmgr +connect +inq
setmqaut -m QM1 -p alice -n CONFIDENTIALITY.Q -t queue +browse +inq +put
setmqaut -m QM1 -p alice -n INTEGRITY.Q -t queue +browse +inq +put
setmqaut -m QM1 -p alice -n PRIVACY.Q -t queue +browse +inq +put 
setmqaut -m QM1 -p alice -n SYSTEM.PROTECTION.POLICY.QUEUE -t queue +browse
setmqaut -m QM1 -p alice -n SYSTEM.PROTECTION.ERROR.QUEUE -t queue +put

setmqaut -m QM1 -p fred -t qmgr +connect +inq
setmqaut -m QM1 -p fred -n CONFIDENTIALITY.Q -t queue +browse +inq +get
setmqaut -m QM1 -p fred -n INTEGRITY.Q -t queue +browse +inq +get
setmqaut -m QM1 -p fred -n PRIVACY.Q -t queue +browse +inq +get
setmqaut -m QM1 -p fred -n SYSTEM.PROTECTION.POLICY.QUEUE -t queue +browse
setmqaut -m QM1 -p fred -n SYSTEM.PROTECTION.ERROR.QUEUE -t queue +put
