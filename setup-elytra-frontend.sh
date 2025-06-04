
#!/bin/bash

# Exit on error
set -e

echo "📁 Creating necessary frontend directories..."
mkdir -p frontend/src/assets

echo "📦 Installing project dependencies..."
cd frontend

# Check for package.json
if [ ! -f package.json ]; then
  echo "⚠️  package.json not found! Please initialize Vite project first."
  exit 1
fi

echo "✅ Installing dependencies..."
npm install

echo "🎨 Setting up Tailwind CSS..."
npx tailwindcss init -p

echo "🧹 Cleaning up default files..."
rm -f src/App.css src/index.css src/App.jsx src/main.jsx

echo "✅ Setup complete. You're ready to build your UI now."
