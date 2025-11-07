#!/bin/bash

QUEUE=$1
export PATH=$PATH:/opt/mqm/samp/bin
amqsbcg ${QUEUE} QM1
