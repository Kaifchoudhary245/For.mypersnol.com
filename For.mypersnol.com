<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>For My Love ❤️</title>
    <style>
        /* Romantic Background */
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #ffdde1;
            overflow: hidden;
            font-family: 'Arial', sans-serif;
        }

        /* Heart Animation */
        .heart-bg {
            position: absolute;
            width: 100%;
            height: 100%;
            background: url('https://i.imgur.com/ntE0B1M.gif');
            background-size: cover;
            opacity: 0.2;
        }

        /* Container */
        .container {
            text-align: center;
            position: relative;
            z-index: 2;
        }

        /* Romantic Heading */
        .romantic-text {
            font-size: 2.5em;
            color: #ff3366;
            font-weight: bold;
        }

        /* Surprise Message */
        .message {
            font-size: 1.2em;
            color: #333;
        }

        /* Button */
        .btn {
            background-color: #ff6699;
            border: none;
            padding: 12px 24px;
            font-size: 1.2em;
            color: white;
            cursor: pointer;
            border-radius: 30px;
            transition: 0.3s;
        }

        .btn:hover {
            background-color: #ff3366;
            transform: scale(1.1);
        }

        /* Shayari Display */
        .shayari {
            margin-top: 20px;
            font-size: 1.5em;
            color: #ff3366;
            font-weight: bold;
            display: none;
        }
    </style>
</head>
<body>
    <div class="heart-bg"></div>
    <div class="container">
        <h1 class="romantic-text">Meri Jaan Ke Naam ❤️</h1>
        <p class="message">Ek chhoti si surprise gift tumhare liye! 🎁</p>
        
        <button class="btn" onclick="showSurprise()">Tap Me 💕</button>
        <p id="shayari" class="shayari"></p>
    </div>

    <script>
        function showSurprise() {
            const shayari = [
                "Tum meri zindagi ka wo hissa ho, jo kabhi alag nahi ho sakta ❤️",
                "Meri duniya sirf tumse hai, aur tum meri jaan ho 💖",
                "Teri muskurahat meri duniya roshan karti hai 🌟",
                "Main hamesha tumhare saath rahunga, chahe kuch bhi ho ❤️"
            ];

            let randomIndex = Math.floor(Math.random() * shayari.length);
            let shayariElement = document.getElementById("shayari");
            shayariElement.innerText = shayari[randomIndex];
            shayariElement.style.display = "block";
        }
    </script>
</body>
</html>
