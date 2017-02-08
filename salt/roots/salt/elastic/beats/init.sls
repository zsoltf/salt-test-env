metricbeat:
  pkg.installed: []
  service.running:
    - enable: True

metricbeat_config:
  file.managed:
    - name: /usr/local/etc/metricbeat.yml
    - source: salt://elastic/beats/metricbeat.yml

metricbeat_template:
  file.managed:
    - name: /usr/local/etc/metricbeat.template.json
    - source: salt://elastic/beats/metricbeat.template.json

metricbeat_template_2x:
  file.managed:
    - name: /usr/local/etc/metricbeat.template-es2x.json
    - source: salt://elastic/beats/metricbeat.template-es2x.json

packetbeat:
  pkg.installed: []
  service.running:
    - enable: True

packetbeat_config:
  file.managed:
    - name: /usr/local/etc/packetbeat.yml
    - source: salt://elastic/beats/packetbeat.yml

packetbeat_template:
  file.managed:
#TODO: fix
    - name: /usr/local/sbin/packetbeat.template.json
    - source: salt://elastic/beats/packetbeat.template.json

packetbeat_template_2x:
  file.managed:
#TODO: fix
    - name: /usr/local/sbin/packetbeat.template-es2x.json
    - source: salt://elastic/beats/packetbeat.template-es2x.json

