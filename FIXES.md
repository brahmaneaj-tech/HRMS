# Server Error Fixes

## Fixed Issues

1. **Database Path Issue**: Fixed the path in `backend/data/database.js` - it was trying to go up one directory when it should use the current directory since the file is already in the data folder.

2. **Error Handling**: Added comprehensive error handling to `server.js` including:
   - Database initialization error handling
   - Port conflict detection
   - General error middleware

3. **Startup Scripts**: Created helper scripts:
   - `start-backend.bat` (Windows)
   - `start-backend.sh` (Linux/Mac)

## How to Start

### Option 1: Use npm script (Recommended)
```bash
npm run server
```

### Option 2: Use helper script (Windows)
```bash
start-backend.bat
```

### Option 3: Manual start
```bash
cd backend
npm install  # Only if dependencies not installed
node server.js
```

## Common Errors and Solutions

### Error: "Cannot find module"
**Solution**: Install dependencies
```bash
cd backend
npm install
```

### Error: "Port 5000 already in use"
**Solution**: Change port in `backend/.env` or kill the process using port 5000

### Error: "EADDRINUSE"
**Solution**: The port is already in use. Either:
- Stop the other process using port 5000
- Change PORT in `backend/.env` file

## Verification

Once the server starts, you should see:
```
✅ Database initialized
🚀 Server running on http://localhost:5000
📊 Health check: http://localhost:5000/api/health
```

Test the server by visiting: http://localhost:5000/api/health

You should see: `{"status":"OK","message":"Dayflow HRMS API is running"}`

