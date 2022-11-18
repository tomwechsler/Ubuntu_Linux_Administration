ls /etc/profile
ls /etc/profile.d
ls /etc/bash.bashrc
echo "umask027" | sudo tee /etc/profile.d/umask.sh



Command setting for all users can be configured with /etc/profile or /etc/bash.bashrc. As the
profile only runs once, upon login, this is preferred and has its own extension directory,
/etc/profile.d/ where you can add.sh files.