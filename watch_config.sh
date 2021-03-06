nerve -c /etc/nerve/nerve.conf.json
cd /etc/nerve/services
while true; do
  change=$(inotifywait -e modify,delete,create .)
  change=${change#./ * }
  if [ "$change" = "*.json" ]; then kill -HUP 1; fi
done