systemctl list-units --type target
runlevel
systemctl get-default
sudo systemctl isolate multi-user
runlevel
sudo systemctl set-default multi-user
systemctl get-default



Targets group services together, a service is configured to be "installed" into a target if it is
enabled for auto-start. Targets can include other targets allowing the grouping to become more
global. For example, the graphical target will include the multi-user target and hence, all multi-
user services will also start in the graphical target.