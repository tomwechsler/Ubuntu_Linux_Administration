cp /etc/hosts .

#the same content
diff /etc/hosts hosts

nano hosts
1.0.0.1 cf

#It's not the same
diff /etc/hosts hosts

#as

#this comparison
diff hosts /etc/hosts