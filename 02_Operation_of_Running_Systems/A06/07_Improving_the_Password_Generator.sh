#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
  if [[ $# -ne 1 ]]; then
    read -sp 'Enter a new password: '
    echo
  else
    REPLY="$1"
  fi
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ] ; then
    PWD_OK="true"
    echo "$PASSWORD"
  else
    echo "Password too short"
    exit 1
  fi
done