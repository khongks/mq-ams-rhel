#!/bin/bash

. /opt/mqm/bin/setmqenv -s

qm=QM1
integrity_queue=INTEGRITY.Q
privacy_queue=PRIVACY.Q
confidentiality_queue=CONFIDENTIALITY.Q

echo "define ql(${integrity_queue}) replace" | runmqsc ${qm}
echo "define qa(ALIAS.${integrity_queue}) target(${integrity_queue}) replace" | runmqsc ${qm}
echo "display ql(${integrity_queue}) maxdepth" | runmqsc ${qm}

echo ""
echo "define ql(${privacy_queue}) replace" | runmqsc ${qm}
echo "define qa(ALIAS.${privacy_queue}) target(${privacy_queue}) replace" | runmqsc ${qm}
echo "display ql(${privacy_queue}) maxdepth" | runmqsc ${qm}

echo ""
echo "define ql(${confidentiality_queue}) replace" | runmqsc ${qm}
echo "define qa(ALIAS.${confidentiality_queue}) target(${confidentiality_queue}) replace" | runmqsc ${qm}
echo "display ql(${confidentiality_queue}) maxdepth" | runmqsc ${qm}
