<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('<%= request.getContextPath() %>/videos/Background image.jpeg'); /* Replace with your background image */
        background-size: cover;
        background-position: center;
        color: #333;
    }
    /* Styles for page content */
    .content {
        position: relative;
        z-index: 1;
        color: white;
        text-align: center;
        padding-top: 20px;
    }
    /* Styles for hero section */
   .hero-section {
        display: flex;
        flex-direction: column; /* Stack elements vertically */
        align-items: center; /* Center horizontally */
        justify-content: center; /* Center vertically */
        padding: 50px;
        text-align: center;
    }

    .hero-section h1 {
        font-size: 7rem
        margin: 0; /* Remove margin */
    }

    .hero-section p {
        font-size: 2rem;
        margin: 10px 0 20px;
    }
</style>
</head>
<body>

<div class="content">
    <%@include file="mainnavbar.jsp" %>
    <div class="hero-section">
        <h1>Welcome to APNA Bharath</h1>
        <p>Explore India's rich heritage, culture, and historical places</p>
    </div>
</div>

</body>
</html>
