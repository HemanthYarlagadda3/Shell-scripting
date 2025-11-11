#!/bin/bash


threshold=500
email="yarl.hemanth@gmail.com"
check_interval=600
log_file="/var/log/memory_alert.log"


echo
echo "Monitoring memory every ${check_interval}s..."
echo "Alert will be sent to: $email if available memory < ${threshold}MB"
echo "-------------------------------------------------------------"

while true; do
  # Get available memory in MB
  available=$(free -m | awk '/Mem:/ {print $7}')
  timestamp=$(date '+%Y-%m-%d %H:%M:%S')

  if [ "$available" -lt "$threshold" ]; then
    subject="⚠️ Low Memory Alert on $(hostname)"
    message="[$timestamp] ALERT: Low memory detected on $(hostname)
Available Memory: ${available} MB
Threshold: ${threshold} MB

Top 5 memory-consuming processes:
$(ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6)

Please investigate possible memory leaks or heavy workloads."

    echo "$message"
    echo "$message" | mail -s "$subject" "$email"


    echo "[$timestamp] ALERT sent to $email - Available: ${available}MB" >> "$log_file"
  else
    echo "[$timestamp] ✅ Memory OK - Available: ${available} MB"
  fi

  sleep $check_interval
done

