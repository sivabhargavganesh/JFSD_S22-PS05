<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Indian States Map</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />

    <style>
        #map {
            height: 800px; /* Height of the map */
            width: 100%;   /* Full width of the screen */
        }
        .popup-image {
            width: 100%; /* Responsive image */
            height: auto;
        }
        .more-info-btn {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white; /* White text */
            background-color: black; /* Black background */
            border-radius: 5px;
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s ease, color 0.3s ease; /* Add transition for text color */
        }
        .more-info-btn:hover {
            background-color: darkblue; /* Change background to dark blue on hover */
            color: white; /* Keep text white on hover */
        }
        footer {
            background-color: #333; /* Dark background color */
            color: white; /* Text color */
            text-align: center; /* Centered text */
            padding: 15px; /* Space around the text */
            position: relative; /* Keep footer relative */
            bottom: 0; /* Stick to the bottom */
            width: 100%; /* Full width */
            font-size: 14px; /* Font size */
            box-shadow: 0 -1px 5px rgba(0, 0, 0, 0.5); /* Subtle shadow effect */
        }
    </style>
</head>
<body>
    <div id="map"></div>

    <!-- Leaflet JavaScript -->
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>

    <script>
        // Initialize the map and set the view to India with a specific zoom level
        var map = L.map('map').setView([20.5937, 78.9629], 5);

        // Add OpenStreetMap tiles
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        // Object containing states and their respective coordinates, info, and images
        var states = {
            "Andhra Pradesh": { 
                coords: [15.9129, 79.7400], 
                info: "Andhra Pradesh is known for its rich cultural heritage and architecture, especially temples like Tirupati. The state also has beautiful beaches and a thriving agriculture sector.", 
                image: "videos/andhra.jpg",
                wiki: "https://en.wikipedia.org/wiki/Andhra_Pradesh"
            },
            "Assam": { 
                coords: [26.2006, 92.9376], 
                info: "Assam is known for its tea plantations, wildlife, and the mighty Brahmaputra river.", 
                image: "videos/assam.jpg",
                wiki: "https://en.wikipedia.org/wiki/Assam"
            },
            "Maharashtra": { 
                coords: [19.7515, 75.7139], 
                info: "Maharashtra is home to bustling cities like Mumbai and Pune.", 
                image: "videos/maharashtra.jpg",
                wiki: "https://en.wikipedia.org/wiki/Maharashtra"
            },
            "Rajasthan": { 
                coords: [27.0238, 74.2179], 
                info: "Rajasthan is famous for its magnificent forts, palaces, and desert landscapes.", 
                image: "videos/rajasthan.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Rajasthan"
            },
            "Tamil Nadu": { 
                coords: [11.1271, 78.6569], 
                info: "Tamil Nadu is known for its Dravidian-style temples.", 
                image: "videos/tamilnadu.jpg",
                wiki: "https://en.wikipedia.org/wiki/Tamil_Nadu"
            },
            "Karnataka": { 
                coords: [15.3173, 75.7139], 
                info: "Karnataka offers a blend of modern cities like Bengaluru and heritage sites like Hampi.", 
                image: "videos/karnataka.jpg",
                wiki: "https://en.wikipedia.org/wiki/Karnataka"
            },
            "West Bengal": { 
                coords: [22.9868, 87.8550], 
                info: "West Bengal is known for its colonial history, rich art, and the vibrant city of Kolkata.", 
                image: "videos/bengal.jpg",
                wiki: "https://en.wikipedia.org/wiki/West_Bengal"
            },
            "Gujarat": { 
                coords: [22.2587, 71.1924], 
                info: "Gujarat is famous for its rich history, stunning temples, and the Gir National Park, which is home to the Asiatic lions.", 
                image: "videos/gujarat.jpeg",
                wiki: "https://en.wikipedia.org/wiki/Gujarat"
            },
            "Odisha": { 
                coords: [20.9517, 85.0985], 
                info: "Odisha is known for its ancient temples, especially the Sun Temple at Konark.", 
                image: "videos/odisaa.jpg",
                wiki: "https://en.wikipedia.org/wiki/Odisha"
            },
            "Uttar Pradesh": { 
                coords: [26.8467, 80.9462], 
                info: "Uttar Pradesh is home to the iconic Taj Mahal, as well as many other historical monuments and religious sites.", 
                image: "videos/uttar pradesh.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Uttar_Pradesh"
            },
            "Bihar": { 
                coords: [25.0961, 85.3131], 
                info: "Bihar is known for its ancient history, including the sites of Nalanda and Bodh Gaya.", 
                image: "videos/bihar.jpg",
                wiki: "https://en.wikipedia.org/wiki/Bihar"
            },
            "Haryana": { 
                coords: [29.0588, 76.0856], 
                info: "Haryana is known for its agriculture and is home to the historic city of Kurukshetra.", 
                image: "videos/haryana.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Haryana"
            },
            "Punjab": { 
                coords: [31.1471, 75.3412], 
                info: "Punjab is known for its rich cultural heritage, the Golden Temple, and vibrant festivals.", 
                image: "videos/punjab.jpg", 
                	wiki: "https://en.wikipedia.org/wiki/Punjab"
            },
            "Himachal Pradesh": { 
                coords: [31.1048, 77.1734], 
                info: "Himachal Pradesh is famous for its stunning mountain landscapes and hill stations.", 
                image: "videos/himachal.jpg",
                wiki: "https://en.wikipedia.org/wiki/Himachal_Pradesh"
            },
            "Jammu and Kashmir": { 
                coords: [33.7782, 76.5762], 
                info: "Jammu and Kashmir is known for its breathtaking landscapes, gardens, and rich history.", 
                image: "videos/kashmir.jpg",
                wiki: "https://en.wikipedia.org/wiki/Jammu_and_Kashmir"
            },
            "Chhattisgarh": { 
                coords: [21.2787, 81.8661], 
                info: "Chhattisgarh is known for its rich tribal culture and natural beauty.", 
                image: "videos/chattisgarh.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Chhattisgarh"
            },
            "Jharkhand": { 
                coords: [23.6102, 85.2799], 
                info: "Jharkhand is rich in minerals and known for its waterfalls and forests.", 
                image: "videos/jharkhand.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Jharkhand"
            },
            "Kerala": { 
                coords: [10.8505, 76.2711], 
                info: "Kerala is known for its backwaters, lush green landscapes, and cultural heritage.", 
                image: "videos/kerala.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Kerala"
            },
            "Madhya Pradesh": { 
                coords: [22.9734, 78.6569], 
                info: "Madhya Pradesh is known for its historical sites, wildlife, and the Khajuraho temples.", 
                image: "videos/madhya pradesh.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Madhya_Pradesh"
            },
            "Mizoram": { 
                coords: [23.1645, 92.9376], 
                info: "Mizoram is known for its beautiful hills and rich cultural diversity.", 
                image: "videos/mizoram.jpg" ,
                wiki: "https://en.wikipedia.org/wiki/Mizoram"
            },
            "Nagaland": { 
                coords: [26.1584, 94.5624], 
                info: "Nagaland is known for its tribal culture and vibrant festivals.", 
                image: "videos/nagaland.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Nagaland"
            },
            "Sikkim": { 
                coords: [27.5330, 88.5122], 
                info: "Sikkim is known for its stunning landscapes and rich biodiversity.", 
                image: "videos/sikkim.jpg" ,
                wiki: "https://en.wikipedia.org/wiki/Sikkim"
            },
            "Tripura": { 
                coords: [23.9400, 91.9882], 
                info: "Tripura is known for its rich history and diverse culture.", 
                image: "videos/tripura.jpg", 
                wiki: "https://en.wikipedia.org/wiki/Tripura"
            },
            "Uttarakhand": { 
                coords: [30.0668, 79.0193], 
                info: "Uttarakhand is known for its natural beauty and pilgrimage sites.", 
                image: "videos/uttarakhand.jpg" ,
                wiki: "https://en.wikipedia.org/wiki/Uttarakhand"
                
            },
            "Telangana": { 
                coords: [17.1232, 79.2088], 
                info: "Telangana is known for its rich culture and the city of Hyderabad.", 
                image: "videos/telengana.jpg",
                wiki: "https://en.wikipedia.org/wiki/Telangana"
            },
            "Delhi": { 
                coords: [28.6139, 77.2090], 
                info: "Delhi is the capital of India, known for its historical monuments and vibrant culture.", 
                image: "videos/delhi.jpg" ,
                wiki: "https://en.wikipedia.org/wiki/Delhi"
            }
        };

        // Loop through each state and add a marker with description
        for (var state in states) {
            var stateData = states[state];
            var marker = L.marker(stateData.coords).addTo(map);
            marker.bindPopup(
                "<b>" + state + "</b><br>" + 
                stateData.info + "<br>" + 
                "<img src='" + stateData.image + "' class='popup-image' alt='" + state + "' /><br>" +
                "<a href='" + stateData.wiki + "' target='_blank' class='more-info-btn'>More Info</a>"
            );  // Show name, description, image, and link
        }
    </script>

    <footer>
        &copy; 2024 Indian States Map. All rights reserved.
    </footer>
</body>
</html>
