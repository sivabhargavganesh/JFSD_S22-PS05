<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>
    body {
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f2f2f2;
        color: #333;
        background-image: url('<%= request.getContextPath() %>/videos/Background image.jpeg');
        background-size: cover;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    header {
        background-color: #4CAF50;
        color: white;
        padding: 20px;
        text-align: center;
        position: absolute;
        top: 0;
        width: 100%;
    }

    h1 {
        font-size: 36px;
        margin: 20px 0;
    }

    .login-container {
        background-color: white;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 40px;
        width: 300px;
        max-width: 90%;
    }

    .form-group {
        margin-bottom: 15px;
        justify-content: space-between;
        gap: 10px;
    }

    label {
        font-size: 16px;
        margin-bottom: 5px;
        display: block;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    button:hover {
        background-color: #45a049;
    }

    footer {
        background-color: #333;
        color: white;
        text-align: center;
        padding: 10px 0;
        position: absolute;
        bottom: 0;
        width: 100%;
    }
</style>
</head>
<body>

    <header>
        <h1>Admin Login</h1>
    </header>

    <div class="login-container">
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label>Enter Username</label>
                <input type="text" name="auname" required />
            </div>

            <div class="form-group">
                <label>Enter Password</label>
                <input type="password" name="apwd" required />
            </div>

            <button type="submit">Login</button>
            <button type="reset">Clear</button>
        </form>
    </div>

    <footer>
        <p>&copy; 2024 Apna Bharath Admin Portal</p>
    </footer>
</body>
</html>
