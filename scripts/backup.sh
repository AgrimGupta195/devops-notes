
#!/bin/bash

set -euo pipefail

PROJECT_DIR="/home/iamagrim/devops-notes"

SOURCE_DIR="$PROJECT_DIR/starter-app"
BACKUP_DIR="$PROJECT_DIR/backups"

TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')

BACKUP_FILE="$BACKUP_DIR/starter-app-$TIMESTAMP.tar.gz"

# Function to display messages
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# Function to create backup
create_backup() {

    log_message "Starting application backup"

    # Create backup directory
    mkdir -p "$BACKUP_DIR"

    # Verify application directory exists
    if [[ ! -d "$SOURCE_DIR" ]]; then
        log_message "ERROR: Application directory not found"
        return 1
    fi

    # Create compressed backup
    tar -czf "$BACKUP_FILE" \
        --exclude="node_modules" \
        --exclude=".git" \
        -C "$PROJECT_DIR" starter-app

    log_message "Backup created successfully"
    log_message "Backup location: $BACKUP_FILE"

    # Display backup size
    du -h "$BACKUP_FILE"

    log_message "Backup completed"
}

# Execute backup function
create_backup
