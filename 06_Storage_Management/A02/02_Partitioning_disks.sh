#MSDOS = 4 Primary max. Size 2TB
#GPT = theoretical 128 Partitions (SCSI Driver max 15 Partitions) max. Size 32EB




sudo parted /dev/loop3 mklabel msdos mkpart primary 0% 100% print 



The parted command can be used non-interactively to create partition tabled and partitions
and print the results. We can run them as 3 separate commands, or as here, as one command.

