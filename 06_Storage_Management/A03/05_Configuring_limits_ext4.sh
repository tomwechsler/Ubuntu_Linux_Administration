#Working on ubuntu1


uname -r

ls -l /boot; sudo reboot

uname -r ; find /lib/modules/ -type f -name '*quota_v*.ko*'

sudo apt install linux-image-extra-virtual quota

sudo modprobe -v quota_v1 ; sudo modprobe -v quota_v2 

sudo mkfs.ext4 -O quota /dev/loop3p1 

sudo mount /dev/loop3p1 /shared_ext4 

sudo quotaon -vua

sudo equota vagrant

sudo repquota -uv /shared_ext4



Using EXT4, quotas is a little more complex. We need to make sure that we have the correct
modules installed. The latest version of the kernel will be installed with the modules. We need to
reboot to make sure that kernel is loaded and install the new modules and tools.