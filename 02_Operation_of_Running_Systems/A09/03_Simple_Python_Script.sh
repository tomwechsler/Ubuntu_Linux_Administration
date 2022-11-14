sudo nano /usr/bin/file_test.py
#!/usr/bin/python3
FILE = '/tmp/mytextfile'
try:
  open(FILE,'a').close()
  print(f'Createdfile: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)
  
sudo chmod755 /usr/bin/file_test.py

file_test.py

rm /tmp/mytextfile



We can create a very simple script to test AppArmor. Dont forget to make the script executable.
Without a profile it can run unconfined; however, we can also create a profile to ensure  only the
correct file name is accessed. The file can be downloaded from 
https://github.com/tomwechsler/Ubuntu_Linux_Administration