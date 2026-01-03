# Quick Setup Guide

## Prerequisites
- Node.js v16 or higher
- npm or yarn

## Installation Steps

1. **Install all dependencies:**
   ```bash
   npm run install-all
   ```

2. **Start the application:**
   ```bash
   npm run dev
   ```

   This starts both backend (port 5000) and frontend (port 3000) servers.

3. **Access the application:**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000

## First Time Setup

1. **Create an account:**
   - Go to http://localhost:3000/signup
   - Create an account with role "Admin" or "HR" for full access
   - Or create an "Employee" account for limited access

2. **Sign in:**
   - Use your credentials to sign in
   - You'll be redirected to your dashboard

## Testing the Application

### As an Employee:
1. Check in/out for attendance
2. Apply for leave
3. View your profile and payroll

### As Admin/HR:
1. View all employees
2. Approve/reject leave requests
3. Update salary structures
4. Generate salary slips
5. View reports and analytics

## Troubleshooting

### Port already in use:
- Change the port in `backend/.env` or `frontend/vite.config.js`

### Dependencies not installing:
- Try deleting `node_modules` and `package-lock.json` and run `npm install` again

### Backend not starting:
- Make sure port 5000 is available
- Check that `backend/.env` file exists

### Frontend not connecting to backend:
- Verify backend is running on port 5000
- Check the proxy settings in `frontend/vite.config.js`

