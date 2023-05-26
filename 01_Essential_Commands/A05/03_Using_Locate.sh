#Update the repos metadata
sudo apt update

sudo apt install -y mlocate

sudo updatedb

locate -S

man locate

locate -b hosts

locate -br '^hosts'

locate -br '^hosts$'

rm hosts

locate -br '^hosts$'

locate -ebr '^hosts$'

locate -eibr '^hosts$'

#Update the locate db
sudo updatedb

