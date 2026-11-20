
# Day 3 - Bash Automation

## Topics Learned

- Bash functions
- Function arguments and exit codes
- Linux cron jobs
- Automated health checks
- curl HTTP requests
- Logging using tee
- Linux disk space monitoring
- tar and gzip backups

## Practical Implementation

### 1. healthcheck.sh
- Checks application availability.
- Sends HTTP request to /health.
- Records HTTP status and response time.
- Saves results in healthcheck.log.

### 2. backup.sh
- Creates compressed application backups.
- Excludes node_modules and .git.
- Stores backups in the backups directory.

### 3. Cron
- Configured cron to run healthcheck.sh
  every five minutes.
- Captures scheduled execution output.

### 4. Disk Monitoring
Practiced:
- df -h
- du -sh
- du --max-depth
- sort -hr
- watch

## Project Outcome

Automated application health monitoring
and compressed application backups using Bash.
