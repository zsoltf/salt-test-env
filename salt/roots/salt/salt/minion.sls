# freebsd salt minion config
salt_minion_log_level_info:
  file.managed:
    - name: /usr/local/etc/salt/minion.d/log_level.conf
    - contents: |
        log_level: info
