openssl passwd -6 Password1
openssl passwd -6 -salt XN2wmxkkdjLiIOUk Password1



The user password is stored as a one-way hash meaning that even the root user cannot tell you
what your password is. Authentication occurs when the entered user password produces the
same hash when combined with the same algorithm and same salt value. Neither the salt or
algorithm is encrypted.