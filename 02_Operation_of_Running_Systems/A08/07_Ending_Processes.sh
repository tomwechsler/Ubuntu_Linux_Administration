sleep 1000 &
pkill sleep
kill -l



Rather than searching for processes and ending them as required with kill, we can
combine the actions using pkill. The default signal is to terminate but other signals
can be sent as required.