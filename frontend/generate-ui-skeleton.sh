#!/bin/bash

set -e

echo "🎨 Creating folder structure for Elytra CSCRF Frontend..."

# Create directories
mkdir -p src/components
mkdir -p src/pages

# Components
cat << 'EOF' > src/components/Header.jsx
import React from "react";

const Header = () => (
  <header className="bg-gray-800 text-white p-4 shadow-md">
    <h1 className="text-xl font-bold">Elytra CSCRF</h1>
  </header>
);

export default Header;
EOF

cat << 'EOF' > src/components/Footer.jsx
import React from "react";

const Footer = () => (
  <footer className="bg-gray-100 text-gray-600 text-center py-3 mt-auto">
    <p>&copy; 2025 Elytra Security. All rights reserved.</p>
  </footer>
);

export default Footer;
EOF

# Pages
declare -A pages
pages=(
  [Welcome]="Welcome to the only Dashboard you need to manage your CSCRF Compliance"
  [Features]="Explore powerful features to streamline CSCRF compliance"
  [Login]="Login to your Elytra CSCRF dashboard"
  [Signup]="Sign up to start your CSCRF compliance journey"
  [ForgotPassword]="Reset your password"
)

for page in "${!pages[@]}"; do
  cat << EOF > src/pages/${page}.jsx
import React from "react";
import Header from "../components/Header";
import Footer from "../components/Footer";

const ${page} = () => (
  <div className="flex flex-col min-h-screen">
    <Header />
    <main className="flex-grow flex items-center justify-center p-6 text-center">
      <h2 className="text-3xl font-semibold text-gray-800">${pages[$page]}</h2>
    </main>
    <Footer />
  </div>
);

export default ${page};
EOF
done

echo "✅ UI skeleton created successfully in 'src/'"
