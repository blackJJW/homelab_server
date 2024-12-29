#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Configuration
LOG_FILE="/var/log/update_upgrade.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Logging function
update_and_upgrade() {
    log_message "Starting system update and upgrade..."

    sudo apt-get update 2>&1 | tee -a $LOG_FILE
    sudo apt-get -y upgrade 2>&1 | tee -a $LOG_FILE

    log_message "Update and upgrade completed successfully."
}

# Cleanup Function
cleanup_system() {
    log_message "Starting system cleanup..."
    
    sudo apt-get -y autoremove 2>&1 | tee -a $LOG_FILE
    sudo apt-get -y autoclean 2>&1 | tee -a $LOG_FILE
    
    log_message "System cleanup completed successfully."
}

# Main Execution
log_message "Script execution started."

update_and_upgrade
cleanup_system

log_message "Script execution completed successfully."