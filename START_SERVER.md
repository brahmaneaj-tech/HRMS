# How to Start the Server

## Quick Start

From the **root directory** (`oddo2`), run:

```bash
npm run server
```

Or to start both frontend and backend:

```bash
npm run dev
```

## Manual Start

### Backend Only:
```bash
cd backend
npm install  # If dependencies not installed
npm run dev   # or npm start
```

### Frontend Only:
```bash
cd frontend
npm install  # If dependencies not installed
npm run dev
```

## Troubleshooting

### Error: "Cannot find module"
- Make sure you've run `npm install` in the backend directory
- Check that `backend/node_modules` exists

### Error: "Port already in use"
- Change the PORT in `backend/.env` file
- Or kill the process using port 5000

### Error: "Failed running server.js"
- Make sure you're in the correct directory
- Check that all dependencies are installed: `cd backend && npm install`
- Verify Node.js version is 16 or higher: `node --version`

## Verify Server is Running

Once started, you should see:
```
🚀 Server running on http://localhost:5000
📊 Health check: http://localhost:5000/api/health
```

Test it by visiting: http://localhost:5000/api/health

