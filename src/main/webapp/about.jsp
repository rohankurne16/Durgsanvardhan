<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
       body {
    font-family: 'Noto Sans Devanagari', sans-serif;
    margin: 0;
    padding: 0;
    background-color: white; /* हलका off-white background */
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

/* About Section */
.about-section {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 30px;
    padding: 50px 20px;
}

.about-card {
    background: linear-gradient(to bottom, #fff9e1, #ffffff); /* pure white cards */
    border-radius: 15px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    padding: 25px;
    flex: 1 1 300px;
    max-width: 600px;
    transition: transform 0.3s, box-shadow 0.3s;
}

/* hover effect for cards */
.about-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

.about-card h2 {
    color: #2e8b57; /* green titles for emphasis */
    margin-bottom: 15px;
}

.about-card p {
    font-size: 1.1rem;
    line-height: 1.6;
    text-align: justify;
    color: #555; /* subtle dark grey for readability */
}

/* Footer */
footer {
    background-color: orange; /* footer orange */
    color: white;
    text-align: center;
    padding: 15px;
    margin-top: 50px;
}

@media (max-width: 768px) {
    .about-section {
        flex-direction: column;
        align-items: center;
    }
}

    </style>
</head>
<body>

<!-- ✅ Navbar Start -->
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
<!-- ✅ Navbar End -->

<!-- Header -->
<div class="header">
    <h1>आमच्या संस्थेबद्दल</h1>
    <p>दुर्ग संवर्धन व स्वच्छता क्षेत्रातील आमचे कार्य आणि संकल्पना</p>
</div>

<!-- About Section -->
<section class="about-section">
    <div class="about-card">
        <h2>संस्थेची संकल्पना</h2>
        <p>
           श्री शिवप्रतिष्ठान हिंदुस्थान (दुर्ग संवर्धन एक ध्यास) ही संस्था महाराष्ट्रातील ऐतिहासिक किल्ल्यांचे संवर्धन, 
            स्वच्छता आणि पर्यावरण रक्षण यासाठी कार्यरत आहे. आमची ही संस्था, श्री शिवप्रतिष्ठान हिंदुस्थान, स्थापनेचा मुख्य उद्देश म्हणजे छत्रपती शिवरायांच्या आदर्शांनुसार समाजाला सेवा करण्याचा व त्यांचा वारसा जतन करण्याचा. दुर्गांचे संवर्धन करून, हा ऐतिहासिक वारसा नव्या पिढीपर्यंत पोहचवणे हे आमचे ध्येय आहे. संस्था स्वच्छता, पर्यावरण संरक्षण आणि जनजागृतीच्या माध्यमातून महाराष्ट्रातील ऐतिहासिक स्थळांचे आणि सांस्कृतिक वारशाचे संवर्धन करत आहे.
        </p>
    </div>

    <div class="about-card">
        <h2>आमचे कार्य</h2>
        <p>आमच्या संस्थेचे मुख्य कार्य दुर्गांचे संवर्धन, स्वच्छता आणि भटकंती या तीन प्रमुख क्षेत्रांमध्ये आहे.
प्रत्येक महिन्यात आम्ही एक विशेष मोहिम राबवतो, ज्यामध्ये दुर्ग परिसरातील स्वच्छता, देखभाल आणि भटकंतीसाठी मार्गदर्शन केले जाते. सध्या सज्जनगड आणि अजिंक्यतारा या दुर्गांवर आमचे सातत्याने कार्य सुरू आहे.
या मोहिमेद्वारे आम्ही इतिहासाशी संबंधित माहिती जनसामान्यांपर्यंत पोहोचवतो आणि दुर्गांचे सांस्कृतिक तसेच ऐतिहासिक महत्त्व लोकांमध्ये जागृत करतो.
तसेच, दिवाळीच्या काळात आम्ही “दुर्ग बांधणी स्पर्धा” चे आयोजन करतो, ज्यातून नवीन पिढीला गडकोटांविषयीचे ज्ञान मिळावे, इतिहासाची आवड निर्माण व्हावी आणि महाराष्ट्राची समृद्ध परंपरा त्यांच्या मनात रुजावी, हा आमचा उद्देश आहे.
आमचे प्रयत्न फक्त दुर्ग जपण्यापुरते मर्यादित नाहीत, तर या वारशाची जाणीव प्रत्येक नागरिकापर्यंत पोहोचवून त्यांच्या मनात इतिहासाबद्दल अभिमान आणि आदर निर्माण करणे हेच आमचे खरे ध्येय आहे.
            
        </p>
    </div>

    <div class="about-card">
        <h2>महत्त्व</h2>
        <p>
            महाराष्ट्रातील गडकिल्ले हे फक्त भौगोलिक संरचना नाहीत, तर छत्रपती शिवाजी महाराजांच्या शौर्य, दूरदृष्टी आणि राष्ट्रसेवेचे प्रतीक आहेत. या गडकिल्ल्यांमुळे आपल्याला इतिहासाची जाणीव होते आणि महाराजांच्या पराक्रमाची प्रेरणा मिळते. गडकिल्ल्यांचे संवर्धन करण्याचे मुख्य कारण म्हणजे आपला सांस्कृतिक वारसा आणि महाराजांचा गौरव पुढील पिढीपर्यंत पोहोचवणे. यामुळे नुसते इतिहास जपला जात नाही, तर पर्यावरणाचे रक्षण, स्थानिक पर्यटनाचा विकास आणि लोकांमध्ये ऐतिहासिक जाणीव व आदर निर्माण होतो. म्हणून गडकिल्ले जपणे हे फक्त कर्तव्य नाही, तर छत्रपती महाराजांच्या स्मरणार्थ केलेली एक मान्य आणि गौरवशाली सेवा आहे.
        </p>
    </div>
</section>

<!-- Footer -->
<footer class="footer">
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
