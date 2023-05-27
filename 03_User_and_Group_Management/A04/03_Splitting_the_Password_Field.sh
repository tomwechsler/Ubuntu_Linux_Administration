sudo getent shadow $USER

sudo getent shadow $USER | cut -f2 -d:

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $2 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $3 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print $4 }'

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print "ALG:\t" $2 "\nSALT:\t" $3 "\nHASH:\t" $4 }'



