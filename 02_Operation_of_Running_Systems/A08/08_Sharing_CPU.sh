sleep 1000 &

ps -lfp $(pgrep sleep)

nice -10 sleep 1000 &

ps -lfp $(pgrep sleep)

renice 19 -p <PID>

sudo renice -15 -p <PID>

ps -alf

The nice value of a process determines the CPU priority that the process will get,
ranging from -20 to +19. Running processes can be reniced to nicer values by
standard uses but not to less nice values.