#!/bin/bash
SRCLIST="/etc/csf/csf.deny"
DSTLIST="/etc/named/named.blackhats"

cp -r ${SRCLIST} ${DSTLIST}

sed -i '1 i\acl "blackhats" {' ${DSTLIST}
sed -i '$a};' ${DSTLIST}
sed -i '/^#/d' ${DSTLIST}
sed -i '/^$/d' ${DSTLIST}
sed -i 's/ # lfd:/; # lfd:/g' ${DSTLIST}

chmod 644 ${DSTLIST}
systemctl reload named
