<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="mainnavbar.jsp" %>
<title>User Login</title>
<style>
/* General Body Styles */
body {
    font-family: 'Arial', sans-serif;
    background-image: url('<%= request.getContextPath() %>/videos/Background image.jpeg');
    background-color: #f0e68c;
    color: #333;
    margin: 0;
    padding: 0;
}

/* Container Styles */
.container {
    background: #ffffff;
    border-radius: 15px;
    padding: 2rem;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    max-width: 500px;
    margin: 5rem auto;
    border: 5px solid green;
}

/* Title Styles */
h2 {
    color: black;
    text-align: center;
    margin-bottom: 1.5rem;
    font-size: 2rem;
    font-family: 'Georgia', serif;
}

/* Input Field Styles */
input[type="email"],
input[type="password"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 2px solid #cccccc;
    border-radius: 5px;
    font-size: 1rem;
    transition: border-color 0.3s;
}

/* Input Focus Styles */
input[type="email"]:focus,
input[type="password"]:focus {
    border-color: #ff6699;
    outline: none;
}

/* Button Styles */
.btn {
    background-color: green;
    color: #ffffff;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1rem;
    margin-top: 10px;
    width: 100%;
    transition: background 0.3s;
}

.btn:hover {
    background-color: #d4a300;
}

/* Responsive Design for Smaller Screens */
@media (max-width: 600px) {
    .container {
        padding: 1rem;
        margin: 3rem auto;
    }

    h2 {
        font-size: 1.5rem;
    }

    input[type="email"],
    input[type="password"] {
        width: calc(100% - 15px);
    }
}
</style>
</head>
<body>
<div class="container">
<h2>User Login</h2>
<form method="post" action="userlogin">
    <label>Enter Email Id</label>
    <input type="email" name="usemail" required />
    <br/>
    <label>Enter Password</label>
    <input type="password" name="uspassword" required />
    <br/>
    <input type="submit" value="Login" class="btn" />
    <input type="reset" value="Clear" class="btn" />
</form>
</div>
</body>
</html>
