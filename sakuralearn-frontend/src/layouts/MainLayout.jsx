import React, { useState } from 'react';
import Sidebar from './Sidebar';
import Navbar from './Navbar';
import './MainLayout.css';

const MainLayout = ({ children, title }) => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);

  const toggleSidebar = () => setIsSidebarOpen(!isSidebarOpen);
  const closeSidebar = () => setIsSidebarOpen(false);

  return (
    <div className={`main-layout ${isSidebarOpen ? 'sidebar-open' : ''}`}>
      <Sidebar isOpen={isSidebarOpen} onClose={closeSidebar} />
      <div className="content-area">
        <Navbar title={title} onToggleSidebar={toggleSidebar} />
        <main className="main-content" onClick={closeSidebar}>
          <div className="main-content-inner">
            {children}
          </div>
        </main>
      </div>
      {isSidebarOpen && <div className="mobile-overlay" onClick={closeSidebar}></div>}
    </div>
  );
};

export default MainLayout;
