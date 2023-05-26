sleep 1000 &

ps -lfp $(pgrep sleep)

nice -10 sleep 1000 &

ps -lfp $(pgrep sleep)

renice 19 -p <PID>

sudo renice -15 -p <PID>

ps -alf

