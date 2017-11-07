write the haproxy config:
 file.managed:
  - name:/etc/haproxy/haproxy.cfg
  - source: salt://files/haproxy.jinja
  - template: jinja