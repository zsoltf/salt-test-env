{% from "dot/map.jinja" import dot with context %}

include:
  - common.grains
  - users

{% set users = salt.pillar.get('users', {}) %}
{% set home = salt.grains.get('os_home') %}

{% for user, details in users.items() %}
  {% for file, path in dot.items() %}

{{ file }}_dotfile_for_{{ user }}:
  file.managed:
    - name: {{ [ home, user, file ]|join('/') }}
    - source: {{ path }}
    - template: jinja
    - require:
      - user: {{ user }}

  {% endfor %}
{% endfor %}