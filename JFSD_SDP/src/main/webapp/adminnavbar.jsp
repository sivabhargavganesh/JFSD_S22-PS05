<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>JFSD Administration Panel</title>
<script type="text/javascript">
    // Function to show confirmation before logout
    function confirmLogout(event) {
        event.preventDefault(); // Prevent the default link behavior
        if (confirm("Are you sure you want to logout?")) {
            window.location.href = "/"; // Redirect to home page after confirmation
        }
    }
</script>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f9f9f9;
        color: #333;
    }

    h2 {
        color: #4CAF50;
        margin-bottom: 20px;
    }

    div.navbar {
        margin-bottom: 20px;
    }

    div.navbar a {
        text-decoration: none;
        margin-right: 15px;
        font-size: 16px;
        color: #4CAF50;
    }

    div.navbar a:hover {
        text-decoration: underline;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <h2 align="center">Administration Panel</h2>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="viewallusers">View All Users</a>
        <a href="#" onclick="confirmLogout(event)">Logout</a>
    </div>
</body>
</html>
