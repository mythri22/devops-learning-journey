#!/bin/bash

LOG_FILE="app.log"
THRESHOLD=2
COUNT=$(grep -c ERROR "$LOG_FILE")
if [ "$COUNT" -gt "$THRESHOLD" ]; then
	echo "ALERT : "$COUNT" is exceeding threshold of "$THRESHOLD""
	echo "ERROR LINES..."
	grep "ERROR" -i "$LOG_FILE"
else
	echo "OK: "$COUNT" is within "$THRESHOLD""
fi
