#!/bin/bash

# Define the pages directory
PAGES_DIR="src/pages"

# Create the directory if it doesn't exist
mkdir -p "$PAGES_DIR"

# Declare an associative array with filename => content
declare -A files=(
  ["Dashboard.jsx"]="import React from 'react';\n\nconst Dashboard = () => {\n  return <div className=\"p-4 text-xl\">Dashboard Page</div>;\n};\n\nexport default Dashboard;"
  ["Features.jsx"]="import React from 'react';\n\nconst Features = () => {\n  return <div className=\"p-4 text-xl\">Features Section</div>;\n};\n\nexport default Features;"
  ["FeaturesPage.jsx"]="import React from 'react';\nimport Features from './Features';\nimport { Link } from 'react-router-dom';\n\nconst FeaturesPage = () => {\n  return (\n    <div className=\"p-8 text-center\">\n      <h1 className=\"text-3xl font-bold mb-6\">Features of Elytra CSCRF</h1>\n      <Features />\n      <Link to=\"/login\" className=\"mt-8 inline-block px-4 py-2 bg-blue-600 text-white rounded\">Go to Login</Link>\n    </div>\n  );\n};\n\nexport default FeaturesPage;"
  ["ForgotPassword.jsx"]="import React from 'react';\n\nconst ForgotPassword = () => {\n  return <div className=\"p-4 text-xl\">Forgot Password Page</div>;\n};\n\nexport default ForgotPassword;"
  ["LandingPage.jsx"]="import React from 'react';\nimport { Link } from 'react-router-dom';\n\nconst LandingPage = () => {\n  return (\n    <div className=\"flex flex-col items-center justify-center min-h-screen text-center\">\n      <h1 className=\"text-4xl font-bold mb-4\">Welcome to the only Dashboard you need to manage your CSCRF Compliance</h1>\n      <h2 className=\"text-2xl mb-8 text-gray-600\">Elytra CSCRF</h2>\n      <Link to=\"/features\" className=\"px-6 py-3 bg-blue-700 text-white rounded hover:bg-blue-800\">Explore Features</Link>\n    </div>\n  );\n};\n\nexport default LandingPage;"
  ["Login.jsx"]="import React from 'react';\n\nconst Login = () => {\n  return <div className=\"p-4 text-xl\">Login Form</div>;\n};\n\nexport default Login;"
  ["LoginPage.jsx"]="import React from 'react';\nimport Login from './Login';\n\nconst LoginPage = () => {\n  return (\n    <div className=\"p-8\">\n      <h1 className=\"text-3xl font-bold mb-4\">Login to Elytra CSCRF</h1>\n      <Login />\n    </div>\n  );\n};\n\nexport default LoginPage;"
  ["Signup.jsx"]="import React from 'react';\n\nconst Signup = () => {\n  return <div className=\"p-4 text-xl\">Signup Form</div>;\n};\n\nexport default Signup;"
  ["SignupPage.jsx"]="import React from 'react';\nimport Signup from './Signup';\n\nconst SignupPage = () => {\n  return (\n    <div className=\"p-8\">\n      <h1 className=\"text-3xl font-bold mb-4\">Create Your Account</h1>\n      <Signup />\n    </div>\n  );\n};\n\nexport default SignupPage;"
  ["Welcome.jsx"]="import React from 'react';\n\nconst Welcome = () => {\n  return <div className=\"p-4 text-xl\">Welcome Page</div>;\n};\n\nexport default Welcome;"
  ["About.jsx"]="import React from 'react';\n\nconst About = () => {\n  return <div className=\"p-4 text-xl\">About Elytra CSCRF</div>;\n};\n\nexport default About;"
  ["AdminPanel.jsx"]="import React from 'react';\n\nconst AdminPanel = () => {\n  return <div className=\"p-4 text-xl\">Admin Panel</div>;\n};\n\nexport default AdminPanel;"
  ["AuditLogs.jsx"]="import React from 'react';\n\nconst AuditLogs = () => {\n  return <div className=\"p-4 text-xl\">Audit Logs</div>;\n};\n\nexport default AuditLogs;"
  ["ComplianceStatus.jsx"]="import React from 'react';\n\nconst ComplianceStatus = () => {\n  return <div className=\"p-4 text-xl\">Compliance Status Page</div>;\n};\n\nexport default ComplianceStatus;"
  ["NotFound.jsx"]="import React from 'react';\n\nconst NotFound = () => {\n  return <div className=\"p-4 text-red-600 text-xl\">404 - Page Not Found</div>;\n};\n\nexport default NotFound;"
)

# Iterate and create files
for file in "${!files[@]}"; do
  echo -e "${files[$file]}" > "$PAGES_DIR/$file"
  echo "✅ Created $file"
done

echo "🎉 All components created in $PAGES_DIR"
