{% set hosts = salt['pillar.get']('Accepted Keys') %}

derp:
  file.managed:
    - name: /usr/local/nagios/etc/static/derp

{%- for host in hosts %}

nagios_{{ host }}:
  file.managed:
    - name: /usr/local/nagios/etc/static/{{ host }}.cfg
    - contents: |
        define host {
          host_name {{ host }}
          use       linux-server
          address	  {{ host }}
          register  1
        }

{%- endfor %}
