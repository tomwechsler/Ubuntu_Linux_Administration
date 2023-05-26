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




https://github.com/tomwechsler/Ubuntu_Linux_Administration