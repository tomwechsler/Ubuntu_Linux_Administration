sudo getent shadow $USER

sudo getent shadow $USER | cut -f2 -d:

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $2 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $3 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $4 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print "ALG:\t" $2 "\nSALT:\t" $3 "\nHASH:\t" $4 }'



The user password is the second field in the /etc/shadow file; however, there are three entities
to a password. The algorithm, the salt and the password hash. Using AWK, we can split the
password to understand the elements.