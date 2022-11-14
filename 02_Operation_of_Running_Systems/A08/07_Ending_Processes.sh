ps

ls /proc

cd /proc/$$

ls

ps -f

ps -fl

ps -elf

ps -lfp1

ps -elf | grep bash

pgrep bash

ps -lp $(pgrep bash)

kill -l

sleep 1000 &

ps

kill 15365

ls

sleep 1000 &

pkill sleep

sleep 1000 &

pkill -9 sleep

sleep 1000 &

pkill -15 sleep

kill -l


Rather than searching for processes and ending them as required with kill, we can
combine the actions using pkill. The default signal is to terminate but other signals
can be sent as required.