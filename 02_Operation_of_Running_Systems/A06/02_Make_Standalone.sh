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

