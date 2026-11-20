
#!/bin/bash

# Exit if a command fails where appropriate
set -u

# Application configuration
APP_URL="http://127.0.0.1:3001/health"

# Project directory
PROJECT_DIR="/home/iamagrim/devops-notes"

# Log file
LOG_FILE="$PROJECT_DIR/logs/healthcheck.log"

# Ensure log directory exists
mkdir -p "$PROJECT_DIR/logs"

# Function to write logs
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Function to check application health
check_health() {

    local BODY_FILE
    BODY_FILE=$(mktemp)

    log_message "Starting application health check"

    # Call the application health endpoint
    local CURL_RESULT

    if CURL_RESULT=$(curl -sS \
        --max-time 10 \
        -o "$BODY_FILE" \
        -w '%{http_code} %{time_total}' \
        "$APP_URL"); then

        local HTTP_CODE
        local RESPONSE_TIME

        read -r HTTP_CODE RESPONSE_TIME <<< "$CURL_RESULT"

        local RESPONSE_BODY
        RESPONSE_BODY=$(cat "$BODY_FILE")

        log_message "HTTP Status: $HTTP_CODE"
        log_message "Response Time: ${RESPONSE_TIME}s"
        log_message "Response Body: $RESPONSE_BODY"

        if [[ "$HTTP_CODE" == "200" ]]; then
            log_message "RESULT: Application is HEALTHY"
            rm -f "$BODY_FILE"
            return 0
        else
            log_message "RESULT: Application is UNHEALTHY"
            rm -f "$BODY_FILE"
            return 1
        fi

    else
        log_message "RESULT: Application is UNREACHABLE"
        rm -f "$BODY_FILE"
        return 1
    fi
}

# Execute the health check
check_health

EXIT_CODE=$?

log_message "Health check finished with exit code: $EXIT_CODE"
log_message "------------------------------------------"

exit "$EXIT_CODE"

