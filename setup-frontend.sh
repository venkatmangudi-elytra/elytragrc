#!/bin/bash

# Exit on error
set -e

# Step 1: Create Vite React project
npm create vite@latest frontend -- --template react
cd frontend

# Step 2: Install dependencies
npm install
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p

# Step 3: Configure Tailwind in tailwind.config.js
cat > tailwind.config.js <<EOL
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
EOL

# Step 4: Inject Tailwind into CSS
cat > src/index.css <<EOL
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

# Step 5: Create folder structure
mkdir -p src/assets
mkdir -p src/components
mkdir -p src/pages

# Step 6: Create component stubs
touch src/components/{Header.jsx,Footer.jsx,FeatureCard.jsx}
touch src/pages/{LandingPage.jsx,FeaturesPage.jsx,LoginPage.jsx,SignupPage.jsx,PasswordResetPage.jsx,Dashboard.jsx}
touch src/App.jsx

# Step 7: Place logo placeholder (manual step)
echo "Please add 'elytra-logo.png' to src/assets/"

# Done
echo "✅ Elytra CSCRF Frontend project setup complete!"
echo "👉 To run the project:"
echo "cd frontend"
echo "npm run dev"

