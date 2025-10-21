FROM instrumentisto/coturn

EXPOSE 3478 5349 49152-65535/udp

CMD turnserver -a -o -v -n --no-dtls --no-tls \
  --min-port 49152 --max-port 65535 \
  --user testuser:testpass \
  --realm zingmini-turn-server-1.onrender.com \
  --cli-password zingminisecret
