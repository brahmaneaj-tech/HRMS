@echo off
echo Starting Dayflow Backend Server...
cd backend
if not exist node_modules (
    echo Installing dependencies...
    call npm install
)
echo Starting server...
node server.js
pause

