#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPTS_DIR="$BASE_DIR"
LOG_FILE="/var/log/update_upgrade.log"
USER_NAME=$USER
GROUP_NAME=$(id -gn)

log_message() {
    echo "[INFO] $(date): $1"
}

# 1. Ensure log file permissions
setup_log_file() {
    if [ ! -f "$LOG_FILE" ]; then
        log_message "Log file $LOG_FILE does not exist. Creating it..."
        sudo touch "$LOG_FILE"
    else
        log_message "Log file $LOG_FILE already exists."
    fi

    log_message "Setting ownership of $LOG_FILE to $USER_NAME:$GROUP_NAME..."
    sudo chown "$USER_NAME:$GROUP_NAME" "$LOG_FILE"

    log_message "Setting permissions of $LOG_FILE to 664 (rw-rw-r--)..."
    sudo chmod 664 "$LOG_FILE"

    log_message "Log file $LOG_FILE is ready for use."
}

# 2. Ensure scripts in the dynamically determined directory are executable
setup_scripts_permissions() {
    if [ ! -d "$SCRIPTS_DIR" ]; then
        log_message "Scripts directory $SCRIPTS_DIR does not exist. Please check the path."
        exit 1
    fi

    log_message "Setting executable permissions for scripts in $SCRIPTS_DIR..."
    sudo chmod +x "$SCRIPTS_DIR"/*.sh

    log_message "Setting ownership of all scripts in $SCRIPTS_DIR to $USER_NAME:$GROUP_NAME..."
    sudo chown "$USER_NAME:$GROUP_NAME" "$SCRIPTS_DIR"/*.sh

    log_message "Verifying permissions for scripts in $SCRIPTS_DIR..."
    ls -l "$SCRIPTS_DIR"/*.sh
}

# Execute the functions
log_message "Starting permission setup..."
setup_log_file
setup_scripts_permissions
log_message "Permission setup completed successfully!"