sudo apt update

sudo apt-get update

ssh 192.168.56.102 "sudo apt update"

ssh 192.168.56.102 "sudo apt-get update"



The command apt is designed for interactive use and the associated apt-get and apt-cache
toolset for scripts and where there is no terminal attached. Running from a script or remotely
via SSH apt will give warnings: WARNING: apt does not have a stable CLI interface. Use with
caution in scripts.