#!/bin/bash
# Simple health check script — run via cron

SERVICES=("http://localhost:80" "http://localhost:5555/health")
LOG_FILE="/home/ubuntu/health-check.log"

for URL in "${SERVICES[@]}"; do
  STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" --max-time 5)
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

  if [ "$STATUS" -eq 200 ]; then
    echo "[$TIMESTAMP] ✅ $URL — UP (HTTP $STATUS)" >> "$LOG_FILE"
  else
    echo "[$TIMESTAMP] ❌ $URL — DOWN (HTTP $STATUS)" >> "$LOG_FILE"
    # Optional: restart containers if down
    # cd /home/ubuntu/mern-devops-project && docker compose restart
  fi
done