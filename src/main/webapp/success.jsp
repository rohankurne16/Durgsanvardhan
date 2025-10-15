<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="mr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>नोंदणी यशस्वी</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Noto Sans Devanagari', sans-serif;
        background-color: rgba(0,0,0,0.2);
        overflow: hidden;
    }

    /* Popup box */
    .popup {
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%) scale(0);
        background: linear-gradient(135deg, #f6d365, #fda085);
        padding: 35px 50px;
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.4);
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        color: white;
        animation: popIn 0.5s forwards, fadeOut 5s 2.5s forwards;
        z-index: 1000;
    }

    @keyframes popIn {
        0% {transform: translate(-50%, -50%) scale(0);}
        60% {transform: translate(-50%, -50%) scale(1.2);}
        100% {transform: translate(-50%, -50%) scale(1);}
    }

    @keyframes fadeOut {
        0% {opacity: 1;}
        100% {opacity: 0;}
    }

    /* Balloon */
    .balloon {
        position: absolute;
        bottom: -100px;
        width: 40px;
        height: 60px;
        border-radius: 50% 50% 50% 50%;
        background-color: red;
        animation: floatUp linear infinite;
        z-index: 999;
    }

    @keyframes floatUp {
        0% {transform: translateY(0) rotate(0deg);}
        100% {transform: translateY(-120vh) rotate(360deg);}
    }

    /* Balloon string */
    .balloon::after {
        content: '';
        position: absolute;
        bottom: -15px;
        left: 50%;
        width: 2px;
        height: 15px;
        background: #555;
        transform: translateX(-50%);
    }

    /* Confetti */
    .confetti {
        position: absolute;
        width: 8px;
        height: 8px;
        background-color: yellow;
        top: -10px;
        animation: fall 3s linear infinite;
        opacity: 0.9;
    }

    @keyframes fall {
        0% {transform: translateY(0) rotate(0deg);}
        100% {transform: translateY(100vh) rotate(360deg);}
    }
</style>
</head>
<body>

<!-- Popup -->
<div class="popup">
    🎉 तुमची सदस्य नोंदणी यशस्वी झाली आहे! 🎉
</div>

<script>
    // Generate balloons
    const colors = ["#ff4c4c","#4cff4c","#4c4cff","#ffcc33","#ff33cc"];
   
    // Generate confetti
    for(let i=0;i<50;i++){
        let conf = document.createElement("div");
        conf.className = "confetti";
        conf.style.left = Math.random()*100 + "%";
        conf.style.backgroundColor = colors[Math.floor(Math.random()*colors.length)];
        conf.style.animationDuration = 2 + Math.random()*2 + "s";
        conf.style.width = 5 + Math.random()*5 + "px";
        conf.style.height = 5 + Math.random()*5 + "px";
        document.body.appendChild(conf);
    }

    // Redirect after 5 seconds
    setTimeout(function() {
        window.location.href = "index.jsp";
    }, 5000);
</script>

</body>
</html>
