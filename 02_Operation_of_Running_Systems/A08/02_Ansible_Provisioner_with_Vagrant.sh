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



