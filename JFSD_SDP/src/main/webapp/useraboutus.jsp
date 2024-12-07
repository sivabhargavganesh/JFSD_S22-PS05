<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: white;
            color: black;
        }

        h2, h3 {
            color: #4A90E2;
            font-weight: bold;
        }

        a {
            color: #4A90E2;
            text-decoration: none;
            transition: color 0.3s;
        }

        a:hover {
            color: #6e7dff;
        }

        /* Team Section Styles */
        .team-section {
            padding: 50px 20px;
            text-align: center;
            background-color: #ffffff;
            border-radius: 12px;
            margin: 40px auto;
            max-width: 1200px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .team-member {
            display: inline-block;
            width: 30%;
            padding: 20px;
            margin: 10px;
            background-color: #f8f9fc;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .team-member:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .team-member h3 {
            font-size: 20px;
            color: #333;
            margin: 10px 0;
        }

        /* Contact Section Styles */
        .contact-section {
            padding: 50px 20px;
            text-align: center;
            background-color: #ffffff;
            border-radius: 12px;
            margin: 40px auto;
            max-width: 1200px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .contact-section h3 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .contact-section p {
            font-size: 16px;
            color: #555;
        }

        /* Newsletter Form Styles */
        .newsletter-form {
            margin-top: 30px;
        }

        .newsletter-form input[type="email"] {
            padding: 15px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-right: 10px;
            transition: border-color 0.3s ease;
        }

        .newsletter-form input[type="email"]:focus {
            border-color: #4A90E2;
            outline: none;
        }

        .newsletter-form button {
            padding: 15px 25px;
            background-color: #4A90E2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .newsletter-form button:hover {
            background-color: #357ABD;
        }

        /* Footer Styles */
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .team-member {
                width: 45%;
            }

            .contact-section {
                padding: 30px 15px;
            }

            .newsletter-form input[type="email"] {
                width: 200px;
            }

            .newsletter-form button {
                padding: 12px 20px;
            }
        }

        @media (max-width: 480px) {
            .team-member {
                width: 80%;
            }

            .contact-section {
                padding: 25px 10px;
            }

            .newsletter-form input[type="email"] {
                width: 180px;
            }

            .newsletter-form button {
                padding: 10px 18px;
            }
        }
    </style>
</head>
<body>

    <!-- Team Section -->
    <div class="team-section">
        <h2>Meet Our Team</h2>
        <div class="team-member">
            <h3>Siva Teja Reddy</h3>
        </div>
        <div class="team-member">
            <h3>Bhargav Ganesh</h3>
        </div>
        <div class="team-member">
            <h3>Subash</h3>
        </div>
    </div>

    <!-- Contact Section -->
    <div class="contact-section">
        <h3>Contact Us</h3>
        <p>Email us at: <a href="mailto:ApnaBharath@gmail.com">ApnaBharath@gmail.com</a></p>
       ś
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 ApnaBharath. All rights reserved.</p>
    </div>

</body>
</html>
