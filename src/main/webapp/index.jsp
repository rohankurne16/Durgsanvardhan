<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>श्री शिवप्रतिष्ठान हिंदुस्थान</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            background-color: #f8f9fa;
            width: 100%;
        }

        /* Navbar */
        .navbar {
            background-color: orange;
           	margin:0px;
            width: 100%;
            padding: 10px;
        }

		.navbar .container {
    		display: flex;
    		justify-content: space-between; /* Left-right alignment */
    		align-items: center; /* Vertical alignment */
    		padding-left: 0;  /* default Bootstrap padding हटवली */
    		padding-right: 0; /* default Bootstrap padding हटवली */
}
		
        .navbar-brand {
            font-size: 25px;
            font-weight: bold;
            color: black !important;
            font-family: 'Noto Sans Devanagari', sans-serif;
            transition: 0.4s;
            align-items: flex-end;
          
        }

        .navbar-brand:hover {
            color: white !important;
        }

        .navbar-nav .nav-link {
            color: white !important;
            font-size: 17px;
            font-weight: 500;
            transition: 0.3s ease-in-out;
            margin-right: 5px;
        }
		.navbar-nav {
    margin-left: 0; /* 30vw किंवा काही margin हटवा */
    gap: 20px;
}
		
        .navbar-nav .nav-link:hover {
            color: black !important;
            text-decoration: underline;
        }

        .navbar-toggler {
            border: none;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        /* Hero Section */
        .hero {
            text-align: center;
            color: red;
            margin-top: 50px;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
            transition: 0.3s;
        }

        .hero h1:hover {
            color: black;
        }

        .hero p {
            font-weight: bold;
            background: linear-gradient(185deg, white, yellow);
            color: black;
            padding: 10px 20px;
            font-size: 1.3rem;
            border-radius: 12px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.15);
            margin-top: 10px;
            display: inline-block;
            animation: fadeGlow 3s ease-in-out infinite alternate;
        }

        @keyframes fadeGlow {
            from { box-shadow: 0px 0px 8px rgba(0, 150, 136, 0.3); }
            to { box-shadow: 0px 0px 18px rgba(0, 150, 136, 0.6); }
        }

        .scrollable-image {
            display: block;
            margin: 30px auto;
            max-width: 400px;
            height: 300px;
            border-radius: 10px;
        }

        /* About Section */
        .about {
            text-align: center;
            padding: 60px 20px;
        }

        .about h2 {
            color: red;
            font-weight: bold;
        }

        .row {
            margin-top: 40px;
            justify-content: center;
            gap: 20px;
        }

        .box1 {
            height: 250px;
            width: 400px;
            border-radius: 10px;
            object-fit: cover;
        }

        /* Button */
        .btn {
            background: linear-gradient(135deg, #2e8b57, #3b5323);
            color: white;
            padding: 12px 32px;
            font-size: 1.2rem;
            font-weight: bold;
            border: none;
            border-radius: 40px;
            text-decoration: none;
            transition: all 0.4s ease-in-out;
            animation: fadeGlow 2.5s infinite alternate;
        }

        .btn:hover {
            transform: scale(1.1);
            background: linear-gradient(135deg, #4caf50, #3b5323);
        }

        /* Footer */
        .footer {
            background-color: orange;
            color: black;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
            font-weight: 500;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">श्री शिवप्रतिष्ठान हिंदुस्थान</a>
        <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav text-end">
                <li class="nav-item"><a class="nav-link" href="index.jsp">मुख्यपृष्ठ</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">संकल्पना</a></li>
                <li class="nav-item"><a class="nav-link" href="work.jsp">आमचे कार्य</a></li>
                <li class="nav-item"><a class="nav-link" href="gallery.jsp">फोटो गॅलरी</a></li>
                <li class="nav-item"><a class="nav-link" href="events.jsp">आगामी मोहिम</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">संपर्क</a></li>
                <li class="nav-item"><a class="nav-link" href="member.jsp">सदस्यांची यादी</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero -->
<section class="hero">
    <h1>आपला वारसा, आपली जबाबदारी</h1>
    <p>"दुर्ग संवर्धन एक ध्यास...!"</p>
</section>
<img src="images/logo.png" alt="संस्थेचा लोगो" class="scrollable-image">

<!-- About -->
<section class="about">
    <div class="container">
        <h2>आमचे उद्दिष्ट</h2>
        <p class="lead mt-3">
            आमची संस्था महाराष्ट्रातील दुर्गसंस्कृती जपण्यासाठी आणि पर्यावरण रक्षणासाठी अखंड कार्यरत आहे.
महाराष्ट्राच्या गौरवशाली इतिहासाचे प्रतीक असलेल्या किल्ल्यांचे संवर्धन, स्वच्छता आणि जतन हेच आमचे प्रमुख ध्येय आहे.
प्रत्येक महिन्यात आम्ही स्वच्छता मोहिमा, दुर्गभ्रमंती आणि जनजागृती उपक्रमांच्या माध्यमातून समाजात स्वच्छता, पर्यावरण संवर्धन आणि इतिहासप्रेमाची भावना जागवतो.
दिवाळीच्या सणानिमित्त आम्ही “दुर्ग बांधणी स्पर्धा” चे आयोजन करतो, ज्यातून नव्या पिढीला गडकोटांचे ज्ञान मिळावे, आपल्या इतिहासाबद्दल अभिमानाची जाणीव व्हावी आणि महाराष्ट्राची समृद्ध परंपरा त्यांच्याद्वारे पुढे नेली जावी, हा आमचा मोलाचा हेतू आहे.
        </p>

        <div class="row">
            <img src="images/ronny.jpg" class="box1" alt="img1">
            <img src="images/grp.jpg" class="box1" alt="img2">
            <img src="images/grp1.jpg" class="box1" alt="img3">
        </div>

        <h2 class="mt-5">दुर्गसेवक नोंदणी</h2>
        <p class="lead mt-3">
            दुर्ग स्वच्छता आणि संवर्धन हे केवळ कार्य नाही, ती आपली जबाबदारी आहे. आपल्या सहभागातून आपण इतिहासाचे संरक्षण आणि निसर्गाचे रक्षण दोन्ही साध्य करू शकतो.
        </p>
        <a href="join.jsp" class="btn mt-3">सदस्य बना</a>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
