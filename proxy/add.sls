write the haproxy config:
 file.managed:
  - name: /etc/haproxy/haproxy.cfg
  - source: salt://proxy/haproxy.jinja
  - template: jinja


haproxy:
 service.running:
   - enable: True
   - reload: True