cat /etc/os-release

source /etc/os-release

echo $PRETTY_NAME



The /etc/os-release file has data within variables that we can use in our scripts.
To read the variables into the current shell or script we use the source command.
Adding these sourced variables to our script can add additional functionality.