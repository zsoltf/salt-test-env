kibana:
  pkg.installed:
    - name: kibana50
  service.running:
    - enable: True
