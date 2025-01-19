#!/bin/bash

LOG_FILE="/var/log/update_upgrade.log"
USER_NAME=$USER
GROUP_NAME=$(id -gn)

log_message() {
    echo "[INFO] $(date): $1"
}

if [ ! -f "$LOG_FILE" ]; then
    log_message "Log file $LOG_FILE does not exist. Creating it..."
    sudo touch "$LOG_FILE"
else
    log_message "Log file $LOG_FILE already exists."
fi

# Change ownership of the log file to the current user
log_message "Changing ownership of $LOG_FILE to $USER_NAME:$GROUP_NAME..."
sudo chown "$USER_NAME:$GROUP_NAME" "$LOG_FILE"

# Set permissions to allow read/write for the owner and read for others
log_message "Setting permissions for $LOG_FILE to 664 (rw-rw-r--)..."
sudo chmod 664 "$LOG_FILE"

# Verify the permissions
log_message "Verifying log file permissions..."
ls -l "$LOG_FILE"

log_message "Log file $LOG_FILE is ready for use."