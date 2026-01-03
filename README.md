# Dayflow - Human Resource Management System

**Every workday, perfectly aligned.**

A comprehensive HRMS solution built for hackathons, featuring employee management, attendance tracking, leave management, payroll, and analytics.

## Features

### 🔐 Authentication & Authorization
- Secure sign up and sign in
- Role-based access control (Admin/HR vs Employee)
- JWT token authentication

### 👥 Employee Management
- Employee profile management
- View and edit personal details
- Admin can manage all employee profiles

### 📅 Attendance Tracking
- Daily check-in/check-out
- Daily and weekly attendance views
- Status tracking (Present, Absent, Half-day, Leave)
- Hours calculation

### 🏖️ Leave Management
- Apply for leave (Paid, Sick, Unpaid)
- Leave request approval workflow
- Status tracking (Pending, Approved, Rejected)
- Admin/HR can approve or reject requests

### 💰 Payroll Management
- Salary structure management
- View salary history
- Generate salary slips
- Admin can update salary structures

### 📊 Analytics & Reports
- Attendance statistics
- Leave status distribution
- Monthly reports
- Visual charts and graphs

## Tech Stack

### Frontend
- React 18
- Vite
- React Router
- Tailwind CSS
- Recharts (for analytics)
- Axios
- Lucide React (icons)

### Backend
- Node.js
- Express.js
- JWT Authentication
- bcryptjs (password hashing)
- JSON file-based storage (for demo purposes)

## Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd oddo2
   ```

2. **Install dependencies**
   ```bash
   npm run install-all
   ```

3. **Set up environment variables**
   
   Create a `.env` file in the `backend` directory:
   ```env
   PORT=5000
   JWT_SECRET=your-secret-key-change-this-in-production
   NODE_ENV=development
   ```

4. **Start the development servers**
   ```bash
   npm run dev
   ```

   This will start:
   - Backend server on `http://localhost:5000`
   - Frontend development server on `http://localhost:3000`

### Alternative: Run separately

**Backend only:**
```bash
cd backend
npm install
npm run dev
```

**Frontend only:**
```bash
cd frontend
npm install
npm run dev
```

## Usage

### Sign Up
1. Navigate to the sign up page
2. Enter Employee ID, Email, Password, and select Role
3. Click "Sign Up"

### Sign In
1. Enter your email and password
2. Click "Sign In"

### Employee Features
- **Dashboard**: View quick stats and access cards
- **Profile**: View and edit personal information
- **Attendance**: Check in/out and view attendance records
- **Leave**: Apply for leave and track requests
- **Payroll**: View salary structure and history

### Admin/HR Features
- **Dashboard**: View overall statistics
- **Employees**: Manage all employees
- **Leave Approvals**: Approve or reject leave requests
- **Payroll**: Update salary structures and generate slips
- **Reports**: View analytics and generate reports

## Project Structure

```
oddo2/
├── backend/
│   ├── data/           # JSON data storage
│   ├── middleware/     # Auth middleware
│   ├── routes/         # API routes
│   └── server.js       # Express server
├── frontend/
│   ├── src/
│   │   ├── components/ # React components
│   │   ├── context/    # React context
│   │   ├── pages/      # Page components
│   │   └── utils/      # Utility functions
│   └── public/         # Static assets
└── package.json        # Root package.json
```

## API Endpoints

### Authentication
- `POST /api/auth/signup` - Sign up
- `POST /api/auth/signin` - Sign in
- `GET /api/auth/me` - Get current user

### Employees
- `GET /api/employees` - Get all employees (Admin only)
- `GET /api/employees/:id` - Get employee by ID
- `PUT /api/employees/:id` - Update employee profile

### Attendance
- `POST /api/attendance/checkin` - Check in
- `POST /api/attendance/checkout` - Check out
- `GET /api/attendance` - Get attendance records
- `GET /api/attendance/weekly` - Get weekly attendance

### Leave
- `POST /api/leave` - Apply for leave
- `GET /api/leave` - Get leave requests
- `PUT /api/leave/:id` - Approve/reject leave (Admin only)

### Payroll
- `GET /api/payroll` - Get payroll data
- `GET /api/payroll/structure/:userId` - Get salary structure
- `PUT /api/payroll/structure/:userId` - Update salary structure (Admin only)
- `POST /api/payroll/generate` - Generate salary slip (Admin only)

### Dashboard
- `GET /api/dashboard/stats` - Get dashboard statistics

## Demo Accounts

You can create accounts with different roles:
- **Employee**: Regular user with limited access
- **HR**: HR officer with approval privileges
- **Admin**: Full administrative access

## Future Enhancements

- Email notifications
- Document management
- Advanced analytics
- Mobile app
- Real-time notifications
- Integration with external systems

## License

MIT License

## Contributing

This is a hackathon project. Feel free to fork and enhance!

---

Built with ❤️ for hackathons

