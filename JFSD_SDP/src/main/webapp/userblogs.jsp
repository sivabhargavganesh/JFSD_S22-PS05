<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="usernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blogs</title>
    <style>
        /* General Styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .blog-container {
            width: 80%;
            margin: 20px auto;
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #333;
        }

        .write-blog-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1.2rem;
            cursor: pointer;
            margin: 20px 0;
            border-radius: 5px;
        }

        .write-blog-btn:hover {
            background-color: #45a049;
        }

        /* Dialog Styling */
        .dialog {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .dialog-content {
            background-color: #fff;
            margin: 15% auto;
            padding: 20px;
            border-radius: 10px;
            width: 60%;
            max-width: 500px;
        }

        .close-btn {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            position: absolute;
            right: 20px;
            top: 10px;
            cursor: pointer;
        }

        .close-btn:hover,
        .close-btn:focus {
            color: black;
            text-decoration: none;
        }

        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
            resize: vertical;
        }

        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 1.2rem;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            border-radius: 5px;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        .blogs-list {
            margin-top: 30px;
        }

        /* Add any additional styling for blog entries here */
        .blog-item {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .blog-item h3 {
            color: #333;
        }

        .blog-item p {
            font-size: 1rem;
            color: #555;
        }

        .blog-item small {
            color: #888;
        }

        .blog-link {
            color: inherit;
            text-decoration: none;
            display: block;
        }

        .blog-link:hover .blog-item {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="blog-container">
        <h1>Articles</h1>
        
        <button class="write-blog-btn" id="writeBlogBtn">Write to us</button>
        
        <div class="blogs-list">
            <!-- Blog posts will appear here -->
            <c:if test="${not empty blogs}">
                <c:forEach var="blog" items="${blogs}">
                    <a href="blogDetails.jsp?id=${blog.id}" class="blog-link">
                        <div class="blog-item">
                            <h3>${blog.title}</h3>
                            <p>${blog.content}</p>
                            <p><strong>Author:</strong> ${blog.author}</p>
                            <p><small>Created on: ${blog.createdAt != null ? blog.createdAt.toString() : 'N/A'}</small></p>
                        </div>
                    </a>
                </c:forEach>
            </c:if>

            <c:if test="${empty blogs}">
                <p>No articles available.</p>
            </c:if>
        </div>
    </div>
    
    <!-- Write Blog Dialog -->
    <div id="writeBlogDialog" class="dialog">
        <div class="dialog-content">
            <span class="close-btn" id="closeDialogBtn">&times;</span>
            <h2>Write to us</h2>
            <form action="/api/blogs" method="POST">
                <input type="text" name="title" placeholder="Title" required><br>
                <textarea name="content" placeholder="Content" required></textarea><br>
                <input type="text" name="author" placeholder="Author" required><br>
                <button type="submit" class="submit-btn">Submit</button>
            </form>
        </div>
    </div>
    
    <script>
        // Open the dialog when "Write a Blog" button is clicked
        document.getElementById('writeBlogBtn').onclick = function() {
            document.getElementById('writeBlogDialog').style.display = 'block';
        };
        
        // Close the dialog when the "x" button is clicked
        document.getElementById('closeDialogBtn').onclick = function() {
            document.getElementById('writeBlogDialog').style.display = 'none';
        };
        
        // Close the dialog if clicked outside of the dialog content
        window.onclick = function(event) {
            if (event.target == document.getElementById('writeBlogDialog')) {
                document.getElementById('writeBlogDialog').style.display = 'none';
            }
        };
    </script>
</body>
</html>
