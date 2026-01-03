# Quick Fix Guide

## Problem: Website Not Showing Correctly

### Step 1: Check What Port Backend is Using

Look at your backend terminal output. You should see:
```
🚀 Server running on http://localhost:5000
```
OR
```
🚀 Server running on http://localhost:5001
```

**Note the port number!**

### Step 2: Update Frontend Proxy (if backend is NOT on port 5000)

If backend is on port 5001, 5002, etc., edit `frontend/vite.config.js`:

```javascript
proxy: {
  '/api': {
    target: 'http://localhost:5001', // Change 5001 to your actual port
    changeOrigin: true
  }
}
```

### Step 3: Restart Both Servers

**Terminal 1 - Backend:**
```bash
cd backend
npm run dev
```

**Terminal 2 - Frontend:**
```bash
cd frontend
npm run dev
```

### Step 4: Open Browser

Go to: **http://localhost:3000**

You should see the sign-in page.

### Step 5: If Still Not Working

1. **Open Browser DevTools (F12)**
2. **Check Console tab** - Look for errors
3. **Check Network tab** - See if API calls are failing
4. **Clear browser cache** - Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)

### Common Issues:

**Issue: "Cannot connect to backend"**
- Make sure backend is running
- Check the port in vite.config.js matches backend port

**Issue: "Blank page"**
- Check browser console for React errors
- Make sure all npm packages are installed: `cd frontend && npm install`

**Issue: "API calls failing"**
- Check backend is running
- Check CORS is enabled in backend (it should be)
- Verify the port in vite.config.js

### Test Backend Directly

Open in browser: **http://localhost:5000/api/health** (or whatever port backend is using)

You should see: `{"status":"OK","message":"Dayflow HRMS API is running"}`

If this doesn't work, the backend isn't running correctly.

