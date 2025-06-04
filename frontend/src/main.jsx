import React from 'react'
import ReactDOM from 'react-dom/client'
import { BrowserRouter, Routes, Route } from 'react-router-dom'
import './index.css'

import LandingPage from './pages/LandingPage'
import FeaturesPage from './pages/FeaturesPage'
import LoginPage from './pages/LoginPage'
import SignupPage from './pages/SignupPage'
import ForgotPassword from './pages/ForgotPassword'
import Dashboard from './pages/Dashboard'
import AdminPanel from './pages/AdminPanel'
import AuditLogs from './pages/AuditLogs'
import ComplianceStatus from './pages/ComplianceStatus'
import About from './pages/About'
import NotFound from './pages/NotFound'

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<LandingPage />} />
        <Route path="/features" element={<FeaturesPage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/signup" element={<SignupPage />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/admin" element={<AdminPanel />} />
        <Route path="/audit-logs" element={<AuditLogs />} />
        <Route path="/compliance" element={<ComplianceStatus />} />
        <Route path="/about" element={<About />} />
        <Route path="*" element={<NotFound />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
)

