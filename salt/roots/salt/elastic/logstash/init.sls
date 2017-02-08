logstash_package:
  pkg.installed:
    - name: logstash5

fdesc_mount:
  mount.mounted:
    - name: /dev/fd
    - device: fdesc
    - fstype: fdescfs
    - opts: rw

proc_mount:
  mount.mounted:
    - name: /proc
    - device: proc
    - fstype: procfs
    - opts: rw

logstash_config:
  file.managed:
    - name: /usr/local/etc/logstash/logstash.conf
    - source: salt://elastic/logstash/logstash.conf

logstash_service:
  service.running:
    - name: logstash
    - enable: True
    - require:
      - mount: fdesc_mount
      - mount: proc_mount
    - watch:
      - pkg: logstash_package
      - file: logstash_config
