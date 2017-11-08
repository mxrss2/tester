write the haproxy config:
 file.managed:
  - name: C:\inetpub\wwwroot\iisstart.htm
  - source: salt://files/iisstart.jinja
  - template: jinja
    