file info.sh
sed -i '1i#!/bin/bash' info.sh
file info.sh
chmod a+x info.sh
./info.sh



Adding a shebang line to the script tells the system which interpreter to use. Adding
the execute permission allows independent execution, without needing to run bash
to open the file.