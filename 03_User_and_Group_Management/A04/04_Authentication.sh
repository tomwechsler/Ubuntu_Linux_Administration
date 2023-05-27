openssl passwd -6 P@ssw0rd

#Repeat 3 times
openssl passwd -1 P@ssw0rd

#Copy the salt from above
openssl passwd -1 -salt XN2wmxkkdjLiIOUk P@ssw0rd

sudo getent shadow $USER | cut -f2 -d: | awk -F$ '{ print "ALG:\t" $2 "\nSALT:\t" $3 "\nHASH:\t" $4 }'

#Copy the salt from above
openssl passwd -6 -salt aAMjsB2Ztbmyf6aE vagrant

#The hash is absolutely the same


