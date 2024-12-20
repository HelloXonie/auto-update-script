#!/bin/bash

LOG_FILE="/var/log/system_update.log"

echo "System update started at $(date)" >> "LOG_FILE"
apt update && apt upgrade -y >> "$LOG_FILE" 2>&1
echo "System update completed at $(date)" >> "LOG_FILE"
