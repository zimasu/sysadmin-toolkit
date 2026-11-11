#!/bin/bash

LOG_DIR="/var/log"

echo "deleting ALL .log file thats modified more than 30 days ago"
find $LOG_DIR -name "*.log" -mtime +30 -delete
