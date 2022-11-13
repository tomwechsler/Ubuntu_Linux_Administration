file info.sh

cp info.sh info2.sh

sed -i '1i#!/bin/bash' info*

file info.sh

chmod -v a+x info.sh

./info.sh

echo $PATH

PATH=$PATH:/home/vagrant/shellscriptinh

echo $PATH

cd

info.sh

cd -


Adding a shebang line to the script tells the system which interpreter to use. Adding
the execute permission allows independent execution, without needing to run bash
to open the file.