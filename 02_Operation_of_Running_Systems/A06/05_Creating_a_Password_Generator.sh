#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
  read -sp 'Enter a new password: '
  echo
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ] ; then
    PWD_OK="true"
    echo "$PASSWORD"
  fi
done


chmod -v a+x pwgen.sh


