As we base this course on Vagrant and VirtualBox we will create a new Vagrant VM to run our
hypervisor. This is known as nested virtual machines where one VM hosts other VMs. Nested
VMs are supported in VirtualBox from version 6.1. To enable support in Vagrant we set the
option in the Vagrantfile.