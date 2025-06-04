import React from 'react';
import { Link } from 'react-router-dom';

const LandingPage = () => {
  return (
    <div className="flex flex-col items-center justify-center min-h-screen text-center">
      <h1 className="text-4xl font-bold mb-4">Welcome to the only Dashboard you need to manage your CSCRF Compliance</h1>
      <h2 className="text-2xl mb-8 text-gray-600">Elytra CSCRF</h2>
      <Link to="/features" className="px-6 py-3 bg-blue-700 text-white rounded hover:bg-blue-800">Explore Features</Link>
    </div>
  );
};

export default LandingPage;
