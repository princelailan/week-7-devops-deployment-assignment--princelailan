#!/bin/bash
# Script to deploy frontend to Netlify or Vercel
# Usage: ./frontend-deploy.sh

echo "Triggering frontend deployment..."

# Example for Netlify CLI deployment
if ! command -v netlify &> /dev/null
then
    echo "Netlify CLI could not be found, please install it first."
    exit
fi

netlify deploy --prod --dir=frontend/dist

echo "Frontend deployment triggered."
