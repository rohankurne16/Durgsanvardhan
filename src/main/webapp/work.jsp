<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>कार्य - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
       body {
           font-family: 'Noto Sans Devanagari', sans-serif;
           margin: 0;
           padding: 0;
           background-color: white;
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
       .header {
           background: linear-gradient(to right, #fff9e6, #ffffff);
           color: #333;
           padding: 50px 20px;
           text-align: center;
       }

       .header h1 {
           font-size: 2.5rem;
           margin: 0 0 10px 0;
       }

       .header p {
           font-size: 1.1rem;
           margin: 0;
       }

       /* Work Section */
       .work-section {
           display: flex;
           flex-wrap: wrap;
           justify-content: center;
           gap: 30px;
           padding: 50px 20px;
       }

       .work-card {
           background: linear-gradient(to bottom, #fff9e1, #ffffff);
           border-radius: 15px;
           box-shadow: 0 4px 12px rgba(0,0,0,0.1);
           padding: 25px;
           flex: 1 1 300px;
           max-width: 600px;
           transition: transform 0.3s, box-shadow 0.3s;
       }

       .work-card:hover {
           transform: translateY(-5px);
           box-shadow: 0 8px 20px rgba(0,0,0,0.15);
       }

       .work-card h2 {
           color: #2e8b57;
           margin-bottom: 15px;
       }

       .work-card p {
           font-size: 1.1rem;
           line-height: 1.6;
           text-align: justify;
           color: #555;
       }

       /* Footer */
       footer {
           background-color: orange;
           color: white;
           text-align: center;
           padding: 15px;
           margin-top: 50px;
       }

       @media (max-width: 768px) {
           .work-section {
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
<div class="header">
    <h1>आमचे कार्य</h1>
    <p>“दुर्ग संवर्धन आणि स्वच्छतेचा एक ध्यास”</p>
</div>

<!-- Work Section -->
<section class="work-section">
    <div class="work-card">
        <h2>संस्थेचा ध्यास</h2>
        <p>
           आमचा मुख्य ध्यास म्हणजे नव्या पिढीपर्यंत छत्रपती शिवरायांचा भक्ती मार्ग पोहोचवणे, त्यांच्या हातून देव, देश आणि धर्माचे कार्य चालवणे, तसेच शिवरायांच्या ज्वलंत इतिहासाचे संरक्षण करणे. आम्ही या ध्येयासाठी काम करताना परंपरा जपणे, इतिहासाची जाणीव निर्माण करणे आणि समाजात संस्कृतीचा संदेश पसरवणे हे लक्षात ठेवतो.
        </p>
    </div>

    <div class="work-card">
        <h2>आमची कार्ये</h2>
        <p>
            - नैसर्गिक दुर्गांचे नियमित स्वच्छता व संवर्धन<br>
            - वृक्षारोपण कार्यक्रम आणि पर्यावरण शिबिरे<br>
            - स्थानिक समाजात जागरूकता मोहिमा<br>
            
        </p>
    </div>

    <div class="work-card">
        <h2>उद्दिष्ट</h2>
        <p>
            सांस्कृतिक व पर्यावरणीय वारसा जतन करणे, स्थानिक समाजामध्ये स्वच्छता व पर्यावरण संवर्धनाबद्दल जागरूकता वाढवणे,
           शिवजयंती पूर्ती शिवभक्ती दाखवन्यापेक्षा वर्षभर शिवरायांची सेवा करणे आणि भविष्यातील पिढ्यांसाठी नैसर्गिक संपदा सुरक्षित करणे हे आमचे उद्दिष्ट आहे.
        </p>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
