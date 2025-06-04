#!/bin/bash

# Set base directory
BASE_DIR="/opt/cscrf-grc/frontend/src/pages"

# Create the directory if it doesn't exist
mkdir -p "$BASE_DIR"

# Dashboard.jsx
cat <<'EOF' > "$BASE_DIR/Dashboard.jsx"
import React from 'react';

function Dashboard() {
  return (
    <div className="p-6">
      <h2 className="text-2xl font-bold text-center text-gray-800">Welcome to your CSCRF Dashboard</h2>
      <p className="text-center mt-4 text-gray-600">Track compliance status, manage evidence, and view audit progress all in one place.</p>
    </div>
  );
}

export default Dashboard;
EOF

# Features.jsx
cat <<'EOF' > "$BASE_DIR/Features.jsx"
import React from 'react';

function Features() {
  return (
    <div className="p-6">
      <h2 className="text-2xl font-bold text-center text-gray-800">Features Overview</h2>
      <ul className="mt-4 list-disc list-inside text-gray-700">
        <li>Real-time compliance tracking</li>
        <li>Audit evidence management</li>
        <li>User access control</li>
        <li>Automated alerts and reports</li>
      </ul>
    </div>
  );
}

export default Features;
EOF

# FeaturesPage.jsx
cat <<'EOF' > "$BASE_DIR/FeaturesPage.jsx"
import React from 'react';
import Features from './Features';
import { Link } from 'react-router-dom';

function FeaturesPage() {
  return (
    <div className="p-6">
      <Features />
      <div className="mt-8 text-center">
        <Link to="/login" className="text-blue-600 hover:underline">Proceed to Login</Link>
      </div>
    </div>
  );
}

export default FeaturesPage;
EOF

echo "✅ All files created successfully in $BASE_DIR"
