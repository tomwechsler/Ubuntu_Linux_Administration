Boot server install ISO
Spacebar to see menu
F6 Other options

#Replace the 3 --- with rw init=/bin/bash

mount /dev/sda1 /mnt

mount --rbind /dev /mnt/dev

mount --rbind /proc /mnt/proc

mount --rbind /sys /mnt/sys

chroot /mnt bash

grub-install /dev/sda

exit

#Poweroff the virtual machine
#Remove the .iso File and start the VM


If GRUB itself has become corrupt, then it needs to be reinstalled. We can down load the ISO file
and boot to this to get an OS to run.