#!/bin/bash
# Script to deploy backend to Render or Railway
# Usage: ./backend-deploy.sh

echo "Triggering backend deployment..."

# Example for Render API deployment trigger
if [ -z "$RENDER_API_KEY" ] || [ -z "$RENDER_BACKEND_SERVICE_ID" ]; then
  echo "Please set RENDER_API_KEY and RENDER_BACKEND_SERVICE_ID environment variables."
  exit 1
fi

curl -X POST "https://api.render.com/deploy/srv-$RENDER_BACKEND_SERVICE_ID" \
  -H "Authorization: Bearer $RENDER_API_KEY" \
  -H "Accept: application/json"

echo "Backend deployment triggered."
