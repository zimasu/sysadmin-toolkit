#!/bin/bash
TODAY=$(date +"%Y-%m-%d")
FROM="/var/www/html"
TO="/mnt/backups"

echo "Backing up $FROM to $TO/backup-$TODAY.tar.gz"
tar -czf $TO/backup-$TODAY.tar.gz $FROM

echo "Removing backups older than 7 days"
find $TO -name "*.tar.gz" -mtime +7 -delete

echo "Done."
