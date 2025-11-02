<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>संपर्क - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            background-color: white; /* हलका background */
            margin: 0;
            padding: 0;
        }

        /* Navbar styles */
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


        .title {
            color: black;
            text-decoration: none;
            font-weight: bold;
            font-size: 25px;
            transition: all 0.3s ease-in-out;
        }

        .title:hover {
            color: white;
        }

        /* Header */
        .contact-header {
            background: linear-gradient(to right, #fff9e6, #ffffff);
            color: #333;
            padding: 50px 20px;
            text-align: center;
        }

        .contact-header h1 {
            font-size: 2.5rem;
            margin: 0 0 10px 0;
            color: red;
            font-weight: bold;
             transition: 0.3s ease-in-out;
        }

		.contact-header h1:hover{
        	color:black;
        }
        .contact-header p {
            font-size: 1.1rem;
            margin: 0;
        }

        /* Contact Section */
        .contact-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 50px 20px;
        }

        .info-card {
            background: linear-gradient(to bottom, #fff9e1, #ffffff);
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            padding: 25px;
            text-align: center;
            flex: 1 1 300px;
            max-width: 450px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .info-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .info-card h4 {
            color: #2e8b57;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .qr-card img {
            max-width: 250px;
            width: 400px;
            
            height:300px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .qr-card img:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0,150,136,0.5);
        }

        /* Footer */
        footer {
            background-color: orange;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .contact-section {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="title" href="index.jsp">श्री शिवप्रतिष्ठान हिंदुस्थान</a>
        <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
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

<!-- Header -->
<div class="contact-header">
    <h1>संपर्क साधा</h1>
    <p>आपले अभिप्राय आणि योगदान आमच्यासाठी महत्त्वाचे आहेत.</p>
</div>

<!-- Contact Info + QR Row -->
<section class="contact-section">
    <!-- Contact Info -->
    <div class="info-card">
       <h4>संस्थेचा पत्ता</h4>
<p>दुर्गसंवर्धन एक ध्यास <br>सातारा – 415002</p>

<h4>संपर्क क्रमांक</h4>
<p> 📞 धारकरी रोहन कुर्णे : +917058094949</p>

<p> 📞 धारकरी प्रतीक कदम: +919356891081</p>

<h4>Instagram</h4>
<p>
    <a href="https://www.instagram.com/durgsanvardhan_ek_dhyas/#" target="_blank" style="text-decoration:none; color:#E1306C; font-weight:bold;">
        <img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" 
             alt="Instagram" width="30" height="30" 
             style="vertical-align:middle; margin-right:8px;">
        @durgsanvardhan_ek_dhyas
    </a>
</p>

    </div>

    <!-- Donation QR -->
    <div class="info-card qr-card">
        <h4>योगदान करण्यासाठी</h4>
        <p>आपल्या हातुन शिवकार्यात फुल न फुलाची पाखली योगदान व्हावे. धनादेश पाठवताना आपले नाव व शहर नमुद करावे</p>
        <img src="images/qr.png" alt="दान QR Code">
    </div>
</section>

<!-- Footer -->
<footer>
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
