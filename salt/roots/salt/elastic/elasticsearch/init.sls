elasticsearch_package:
  pkg.installed:
    - name: elasticsearch5

elasticsearch_config:
  file.managed:
    - name: /usr/local/etc/elasticsearch/elasticsearch.yml
    - source: salt://elastic/elasticsearch/elasticsearch.yml

elasticsearch_service:
  service.running:
    - name: elasticsearch
    - enable: True
    - watch:
      - pkg: elasticsearch_package
      - file: elasticsearch_config
