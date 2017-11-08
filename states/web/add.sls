write the haproxy config:
 file.managed:
  - name: C:\inetpub\wwwroot\iisstart.htm
  - source: salt://files/iisstart.jinja
  - template: jinja

ssp/loadbalaencer/pool/update:
  event.send:
    - data:
        status: "Half-way through the state run!"