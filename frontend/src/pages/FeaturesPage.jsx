import React from 'react';
import Features from './Features';
import { Link } from 'react-router-dom';

const FeaturesPage = () => {
  return (
    <div className="p-8 text-center">
      <h1 className="text-3xl font-bold mb-6">Features of Elytra CSCRF</h1>
      <Features />
      <Link to="/login" className="mt-8 inline-block px-4 py-2 bg-blue-600 text-white rounded">Go to Login</Link>
    </div>
  );
};

export default FeaturesPage;
