if [[ $# -ne 1 ]] ; then
  read -sp "Enter password: "
  echo ""
else
  REPLY=$1
fi



Scripts can take arguments; $O is always the script name. The number or arguments
can be read using $#. $1 is the first argument. Using [[]]as your test brackets 
automatically protects reserved characters in variables.