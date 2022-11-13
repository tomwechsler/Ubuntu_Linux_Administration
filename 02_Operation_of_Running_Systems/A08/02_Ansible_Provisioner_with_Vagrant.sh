-name: correct multipathd
    copy:
      dest: /etc/multipath.conf
      content: |
        defaults {
          user_friendly_names yes
        }
        blacklist {
          devnode "^sd[a-b]" 
        }
    notify: RestartMP



The ansible_local provisioner in Vagrant will install Ansible into the guest and then
can execute a Playbook. This way we can ensure each time the virtual machine is
created the fix is applied.