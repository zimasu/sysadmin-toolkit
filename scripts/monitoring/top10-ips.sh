#!/bin/bash
LOG_FILE="/var/log/nginx/access.log"

awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -10
