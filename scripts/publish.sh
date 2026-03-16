#!/bin/bash
# scripts/publish.sh
# Hugo build and publish script for The City
# Install as a post-commit hook by symlinking:
#   ln -s ../../scripts/publish.sh .git/hooks/post-commit

# ── Configuration ────────────────────────────────────────────────────────────
REMOTE_USER="fixer"
REMOTE_HOST="scribe.home.arpa"
REMOTE_PATH="/www/thecity/
SSH_PORT=22
SSH_KEY=""                          # Optional: path to SSH key, e.g. ~/.ssh/id_rsa
LOG_FILE="scripts/publish.log"
BUILD_FLAGS="-DF"                   # Remove -DF for production-only content
# ─────────────────────────────────────────────────────────────────────────────

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

log() {
  echo "[$TIMESTAMP] $1" | tee -a "$LOG_FILE"
}

# ── Check Hugo is available ───────────────────────────────────────────────────
if ! command -v hugo &> /dev/null; then
  log "ERROR: hugo command not found. Aborting."
  exit 1
fi

# ── Check if remote server is reachable via SSH ───────────────────────────────
log "Checking if $REMOTE_HOST is available..."

SSH_OPTS="-o ConnectTimeout=5 -o BatchMode=yes -o StrictHostKeyChecking=no -p $SSH_PORT"
if [ -n "$SSH_KEY" ]; then
  SSH_OPTS="$SSH_OPTS -i $SSH_KEY"
fi

if ! ssh $SSH_OPTS "$REMOTE_USER@$REMOTE_HOST" exit &>/dev/null; then
  log "INFO: $REMOTE_HOST is not reachable. Skipping publish."
  exit 0
fi

log "Server is available. Proceeding with build and publish."

# ── Build the site ────────────────────────────────────────────────────────────
log "Building Hugo site..."
if ! hugo $BUILD_FLAGS >> "$LOG_FILE" 2>&1; then
  log "ERROR: Hugo build failed. Aborting publish."
  exit 1
fi
log "Build successful."

# ── Sync to remote server ─────────────────────────────────────────────────────
log "Syncing to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH..."

RSYNC_OPTS="-avz --delete -e \"ssh $SSH_OPTS\""

if ! rsync -avz --delete \
  -e "ssh $SSH_OPTS" \
  public/ \
  "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH" >> "$LOG_FILE" 2>&1; then
  log "ERROR: rsync failed."
  exit 1
fi

log "Publish complete. Site is live on $REMOTE_HOST."
exit 0
