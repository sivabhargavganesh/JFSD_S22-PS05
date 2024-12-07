<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <style>
        /* Background and text styling */
        body {
            background-color: #f2f2f2;
            color: #333;
            font-family: 'Arial', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        /* Title styling */
        h1 {
            color: #4CAF50;
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 0.5em;
        }

        /* Paragraph styling */
        p {
            font-size: 1.2em;
            margin: 0.5em 0 1em;
            text-align: center;
        }

        /* Button link styling */
        a {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 1em 2em;
            border-radius: 8px;
            font-weight: bold;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Thank You for Contacting Us!</h1>
    <p>Your message has been successfully submitted.</p>
    <p><c:out value="${successMessage}" /></p>
    <a href="dashboard">Back to Dashboard</a> <!-- You can change the link to any other page -->
</body>
</html>
