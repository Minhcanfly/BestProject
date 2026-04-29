import React from 'react';
import Sidebar from './Sidebar';
import Navbar from './Navbar';
import './MainLayout.css';

const MainLayout = ({ children, title }) => {
  return (
    <div className="main-layout">
      <Sidebar />
      <div className="content-area">
        <Navbar title={title} />
        <main className="main-content">
          <div className="main-content-inner">
            {children}
          </div>
        </main>
      </div>
    </div>
  );
};

export default MainLayout;
