#!/bin/bash
echo "Starting Dayflow Backend Server..."
cd backend
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi
echo "Starting server..."
node server.js

