# Troubleshooting Guide

## Website Not Showing Correctly

### Issue: Frontend not loading or showing wrong content

**Possible Causes:**
1. Backend server is not running
2. Backend is running on a different port than expected
3. API calls are failing
4. CORS issues

### Solutions:

#### 1. Check if Backend is Running
```bash
# Check what port the backend is using
cd backend
npm run dev
# Look for: "🚀 Server running on http://localhost:XXXX"
```

#### 2. Update Vite Proxy (if backend port changed)
If backend is running on port 5001, 5002, etc., update `frontend/vite.config.js`:
```javascript
proxy: {
  '/api': {
    target: 'http://localhost:5001', // Change to actual port
    changeOrigin: true
  }
}
```

#### 3. Check Browser Console
Open browser DevTools (F12) and check:
- Console tab for errors
- Network tab for failed API requests
- Application tab for localStorage issues

#### 4. Verify Both Servers are Running
```bash
# Terminal 1: Backend
cd backend
npm run dev

# Terminal 2: Frontend  
cd frontend
npm run dev
```

#### 5. Clear Browser Cache
- Hard refresh: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
- Clear localStorage: DevTools > Application > Local Storage > Clear

#### 6. Check API Endpoints
The frontend should be calling:
- `/api/auth/signin` (not `/api/api/auth/signin`)
- `/api/auth/signup`
- `/api/auth/me`

If you see double `/api/api/`, the baseURL is wrong.

### Common Errors:

**Error: "Failed to fetch"**
- Backend is not running
- Wrong port in vite.config.js
- CORS issue (check backend CORS settings)

**Error: "401 Unauthorized"**
- Token expired or invalid
- Clear localStorage and sign in again

**Error: "Cannot GET /"**
- Frontend routing issue
- Check App.jsx routes

**Blank Page**
- Check browser console for React errors
- Check if main.jsx is loading correctly
- Verify all dependencies are installed

### Quick Fix Commands:

```bash
# Stop all Node processes
# Windows:
taskkill /F /IM node.exe

# Then restart:
cd backend && npm run dev
# In another terminal:
cd frontend && npm run dev
```

