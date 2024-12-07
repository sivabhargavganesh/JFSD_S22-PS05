<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JFSD</title>
<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
<style>
    /* Page styling */
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f3e4; /* Soft neutral background */
        overflow-x: hidden;
    }

    /* Header bar with transparent background */
    .header-bar {
    	width: 98%;
        position: fixed;
        background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white */
        padding: 15px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        position: relative;
    }

    /* Logo styling */
    .logo img {
        height: 40px;
        width: 200px;
    }

    /* Center title with new font */
    .header-title {
        flex-grow: 1;
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        color: #333333; /* Dark text for visibility */
        margin: 0;
        font-family: 'Merriweather', serif; /* New font */
    }

    /* Hamburger menu button */
    .menu-toggle {
        cursor: pointer;
        padding: 10px;
    }

    .menu-toggle span {
        display: block;
        width: 30px;
        height: 3px;
        margin: 5px;
        background-color: #333333; /* Dark color for contrast */
    }

    /* Navbar links styling */
    .navbar-links {
        display: flex;
        gap: 10px;
        align-items: center;
    }

    /* Button style for links */
    .navbar-links a {
        text-decoration: none;
        color: #333333; /* Dark color for text */
        font-weight: bold;
        padding: 10px 20px;
        background-color: rgba(0, 0, 0, 0.1); /* Light transparent background for buttons */
        border-radius: 5px;
        transition: background-color 0.3s ease;
        display: inline-block;
    }

    /* Hover effect for button-style links */
    .navbar-links a:hover {
        background-color: rgba(0, 0, 0, 0.2); /* Slightly darker transparent background on hover */
        color: #000000; /* Dark color on hover */
    }

    /* Sidebar styling, moved to the right */
    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        top: 0;
        right: 0; /* Moved to the right */
        background-color: rgba(224, 250, 234, 0.9); /* Light green with transparency */
        overflow-x: hidden;
        padding-top: 60px;
        box-shadow: -2px 0 5px rgba(0, 0, 0, 0.3);
        transform: translateX(100%); /* Start off-screen to the right */
        transition: transform 0.3s ease;
        z-index: 1;
    }

    /* Sidebar links */
    .sidebar a {
        padding: 15px 25px;
        text-decoration: none;
        color: #2e7d32; /* Dark green color for sidebar links */
        font-weight: bold;
        display: block;
        transition: background-color 0.3s ease;
    }

    .sidebar a:hover {
        background-color: #a5d6a7; /* Light green color on hover */
    }

    /* Sidebar toggle class */
    .sidebar.open {
        transform: translateX(0); /* Display sidebar when open */
    }
</style>
</head>
<body>
    <!-- Header bar with logo, hamburger on the left, title centered, and navbar links on the right -->
    <div class="header-bar">
        <!-- Logo image -->
        <div class="logo">
            <img src="<%= request.getContextPath() %>/videos/apna logo.jpg" alt="Logo">
        </div>

        <!-- Hamburger menu button -->
        <div class="menu-toggle" onclick="toggleMenu()">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <h2 class="header-title">Apna Bharath</h2>

        <!-- Navbar links -->
        <div class="navbar-links">
            <a href="userreg">Register</a>
            <a href="userlogin">Login</a>
        </div>
    </div>

    <!-- Sidebar menu, moved to the right side -->
    <div class="sidebar" id="sidebarMenu">
        <a href="/">Home</a>
        <a href="contactus">Contact Us</a>
        <a href="blogs">Blogs</a>
        <a href="gallery">Gallery</a>
    </div>

    <script>
        // JavaScript function to toggle sidebar menu
        function toggleMenu() {
            var sidebar = document.getElementById("sidebarMenu");
            sidebar.classList.toggle("open");
        }

        // Close sidebar menu when clicking outside of it
        document.addEventListener('click', function(event) {
            var sidebar = document.getElementById("sidebarMenu");
            var menuToggle = document.querySelector('.menu-toggle');

            // Check if the sidebar is open and the click happened outside the sidebar and menu toggle button
            if (sidebar.classList.contains('open') && !sidebar.contains(event.target) && !menuToggle.contains(event.target)) {
                sidebar.classList.remove('open');
            }
        });
    </script>
</body>
</html>
