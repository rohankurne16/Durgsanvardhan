<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            margin: 0;
            padding: 0;
            background-color: white;
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
        .header {
            background: linear-gradient(to right, #fff9e6, #ffffff);
            color: #333;
            padding: 50px 20px;
            text-align: center;
        }

        .header h1 {
            font-size: 2.5rem;
            margin: 0 0 10px 0;
            color: red;
            font-weight: bold;
             transition: 0.3s ease-in-out;
        }
        .header h1:hover{
        	color:black;
        }

        .header p {
            font-size: 1.1rem;
            margin: 0;
        }

        /* Gallery Section */
        /* Gallery Cards Border */
/* Card Image Border */
.carousel-inner img {
    border: 3px solid black;
    border-radius: 5px;
    width: 100%;
    height: 500px;
    object-fit: cover;   /* ✅ Now image fills full height & width */
}



        .carousel-caption {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    width: 100%;              /* Full width of image */
    background: rgba(0,0,0,0.5);
    color: white;
    padding: 10px 0;          /* Top-Bottom padding, horizontal auto */
    text-align: center;
    font-size: 1rem;
    opacity: 1 !important;    /* Hover-free, always visible */
}

        /* Footer */
        footer {
            background-color: orange;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
        }
        /* Apply inner spacing to bottom gallery images */
section:last-of-type .carousel-inner {
    padding: 10px;              /* Inner spacing (white space inside carousel) */
    background-color: #fff;     /* Optional: white background around images */
    border-radius: 10px;        /* Smooth rounded edges */
}

section:last-of-type .carousel-inner img {
    border: 2px solid #000;     /* Keep your black border */
    border-radius: 8px;
    width: 100%;
    height: 480px;              /* Adjust height a bit since we added padding */
    object-fit: contain;        /* So image fits nicely within */
    background-color: #f9f9f9;  /* Slightly off-white backdrop for a framed look */
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
<div class="header">
    <h1>छायाचित्रांचा संग्रह</h1>
    <p>  आपल्य पुर्विच्या मोहिमेंची छायाचित्रे</p>
</div>

<!-- Gallery Section -->
<!-- Gallery Section -->
<section class="container my-5">
    <div class="row g-4.5">
        <!-- Card 1 -->
        <div class="col-md-4">
            <div id="carouselCard1" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/sajj1.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 1">
                        <div class="carousel-caption">🏔️ श्री सज्जनगड संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/sajj2.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 2">
                        <div class="carousel-caption">🏔️ श्री सज्जनगड संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/aj3.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 3">
                        <div class="carousel-caption">🏔️ श्री सज्जनगड संवर्धन मोहीम</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-4">
            <div id="carouselCard2" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/aj1.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 1">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/aj2.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 2">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/aj4.png" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 3">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-md-4">
            <div id="carouselCard3" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/nw1.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 1">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/nw2.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 2">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/nw3.jpg" class="d-block w-100" style="height:500px; object-fit:contain;" alt="Image 3">
                        <div class="carousel-caption">🏔️ श्री अजिंक्यतारा संवर्धन मोहीम</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br>
<br>

<section class="container my-5">
    <div class="row g-4.5">
        <!-- Card 1 -->
        <div class="col-md-4">
            <div id="carouselCard1" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/santo.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 1">
                        <div class="carousel-caption">🏞️ दुर्गभ्रमंती मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/santo1.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 2">
                        <div class="carousel-caption">🏞️ दुर्गभ्रमंती मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/santo2.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 3">
                        <div class="carousel-caption">🏞️ दुर्गभ्रमंती मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/rj1.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 2">
                        <div class="carousel-caption">🏞️ दुर्गभ्रमंती मोहीम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/rj2.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 3">
                        <div class="carousel-caption">🏞️ दुर्गभ्रमंती मोहीम</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-4">
            <div id="carouselCard2" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/ss1.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 1">
                        <div class="carousel-caption">📢 दुर्गसंवर्धन जनजागृती उपक्रम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/ss2.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 2">
                        <div class="carousel-caption">📢 दुर्गसंवर्धन जनजागृती उपक्रम</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/ss3.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 3">
                        <div class="carousel-caption">📢 दुर्गसंवर्धन जनजागृती उपक्रम</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-md-4">
            <div id="carouselCard3" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                <div class="carousel-inner">
                  `
                    <div class="carousel-item active">
                        <img src="images/k2.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 2">
                        <div class="carousel-caption">🧱 दुर्ग बांधणी स्पर्धा आयोजन</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/k3.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 3">
                        <div class="carousel-caption">🧱 दुर्ग बांधणी स्पर्धा आयोजन</div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/k4.jpg" class="d-block w-100" style="height:500px; object-fit:cover;" alt="Image 4">
                        <div class="carousel-caption">🧱 दुर्ग बांधणी स्पर्धा आयोजन</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<br> <br> 


<!-- Footer -->
<footer class="footer">
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
