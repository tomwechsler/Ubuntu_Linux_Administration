#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
  read -sp "Enter password: "
  echo ""
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ]; then
    PWD_OK="true"
    echo "$PASSWORD"
  fi
done



We can use either WHILE or UNTIL loops to check conditions and keep looping until
they are either true or false. We can also use conditionals within the loop to trigger it
to end. In this example we use while, read and if statements and we will discover 
more about these statements in the demo.