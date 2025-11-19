#!/bin/bash

# Directory to back up
SOURCE_DIR="Ansible"

# Destination directory where backup file will be stored
BACKUP_DIR="Ansible_bkp"


# Timestamp (YYYYMMDD_HHMMSS)
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Backup file name
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

# Create the backup
tar -czf "${BACKUP_DIR}/${BACKUP_FILE}" "$SOURCE_DIR"

# Optional: print confirmation
echo "Backup created: ${BACKUP_DIR}/${BACKUP_FILE}"
