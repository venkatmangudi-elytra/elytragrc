#!/bin/bash

PAGES_DIR="./src/pages"

echo "📄 Creating next set of frontend page components..."

mkdir -p "$PAGES_DIR"

# About.jsx
cat > "$PAGES_DIR/About.jsx" << 'EOF'
import React from 'react';

const About = () => (
  <div className="p-6">
    <h1 className="text-3xl font-bold mb-4">About Elytra CSCRF</h1>
    <p>
      Elytra CSCRF is a comprehensive dashboard tailored to simplify and automate compliance 
      with SEBI’s Cyber Security and Cyber Resilience Framework.
    </p>
  </div>
);

export default About;
EOF

# ComplianceStatus.jsx
cat > "$PAGES_DIR/ComplianceStatus.jsx" << 'EOF'
import React from 'react';

const ComplianceStatus = () => (
  <div className="p-6">
    <h2 className="text-2xl font-semibold mb-4">Compliance Overview</h2>
    <p>Status and audit metrics will appear here.</p>
  </div>
);

export default ComplianceStatus;
EOF

# AdminPanel.jsx
cat > "$PAGES_DIR/AdminPanel.jsx" << 'EOF'
import React from 'react';

const AdminPanel = () => (
  <div className="p-6">
    <h2 className="text-2xl font-semibold mb-4">Admin Panel</h2>
    <p>Manage users, system settings, and platform configurations.</p>
  </div>
);

export default AdminPanel;
EOF

# AuditLogs.jsx
cat > "$PAGES_DIR/AuditLogs.jsx" << 'EOF'
import React from 'react';

const AuditLogs = () => (
  <div className="p-6">
    <h2 className="text-2xl font-semibold mb-4">Audit Logs</h2>
    <p>All user and system events will be listed here.</p>
  </div>
);

export default AuditLogs;
EOF

# NotFound.jsx
cat > "$PAGES_DIR/NotFound.jsx" << 'EOF'
import React from 'react';
import { Link } from 'react-router-dom';

const NotFound = () => (
  <div className="h-screen flex flex-col items-center justify-center">
    <h1 className="text-6xl font-bold mb-4">404</h1>
    <p className="mb-6">Oops! Page not found.</p>
    <Link to="/" className="bg-blue-600 text-white px-4 py-2 rounded">Go Home</Link>
  </div>
);

export default NotFound;
EOF

echo "✅ Next set of pages created successfully!"
