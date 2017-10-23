{% if not data['result']  %}
minion_remove:
  wheel.key.delete:
    - args:
      - match: {{ data['id'] }}
minion_rejoin:
  local.cmd.run:
    - tgt: salt-master.domain.tld
    - args:
      - cmd: ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no "{{ data['id'] }}" 'sleep 10 && /etc/init.d/salt-minion restart'
{% endif %}

{# Ink server is sending new key -- accept this key #}
{% if 'act' in data and data['act'] == 'pend' %}
minion_add:
  wheel.key.accept:
    - args:
        match: {{ data['id'] }}
{% endif %}