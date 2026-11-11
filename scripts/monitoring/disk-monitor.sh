#!/bin/bash
THRESHOLD=90
echo "Checking whether disk usage passes $THRESHOLD% threshold... (Hint: Empty output means nothing exceeds threshold.)"
df -h | awk 'NR>1 {gsub(/%/,""); if($5+0 > '$THRESHOLD') print $6, $5"%"}'
echo "Done."
