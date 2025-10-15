<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>आगामी कार्यक्रम - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body { font-family: 'Noto Sans Devanagari', sans-serif; margin: 0; padding: 0; background-color: white; }
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
        .header {
           background: linear-gradient(to right, #fff9e6, #ffffff);
           color: #333;
           padding: 50px 20px;
           text-align: center;
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
       .header h1 {
           font-size: 2.5rem;
           margin: 0 0 10px 0;
       }

       .header p {
           font-size: 1.1rem;
           margin: 0;
       }
        .events-header { background: linear-gradient(to right, #fff9e6, #ffffff); color: #333; padding: 50px 20px; text-align: center; }
        .events-header h1 { font-size: 2.5rem; margin: 0 0 10px 0; }
        .events-header p { font-size: 1.1rem; margin: 0; }
        .event-card { background: linear-gradient(to bottom, #fff9e1, #ffffff); border-radius: 15px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); padding: 20px; margin-bottom: 30px; transition: transform 0.3s, box-shadow 0.3s; }
        .event-card:hover { transform: translateY(-5px); box-shadow: 0 8px 20px rgba(0,0,0,0.15); }
        .event-date { font-size: 1rem; font-weight: bold; color: #2e8b57; margin-bottom: 10px; }
        .event-title { font-size: 1.5rem; font-weight: bold; color: #2e8b57; margin-bottom: 10px; }
        .event-desc { font-size: 1rem; color: #555; }
        footer { background-color: orange; color: white; text-align: center; padding: 15px; margin-top: 50px; }
        @media (max-width: 768px) { .row { flex-direction: column; } }
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
<div class="events-header">
    <h1>आगामी कार्यक्रम</h1>
    <p>तुम्ही सहभागी होऊ शकता अशा स्वच्छता मोहिमा, ट्रेक्स आणि इतर उपक्रमांची माहिती येथे मिळेल.</p>
</div>

<!-- Events Section -->
<section class="container my-5">
    <div class="row">
    <%
        // Database connection
        String url = "jdbc:mysql://localhost:3306/durg";
        String user = "root";
        String password = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, password);
            String sql = "SELECT title, description, event_date FROM events ORDER BY event_date ASC";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while(rs.next()) {
                String title = rs.getString("title");
                String desc = rs.getString("description");
                java.sql.Date eventDate = rs.getDate("event_date");

                java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("d MMMM yyyy", new java.util.Locale("mr", "IN"));
                String formattedDate = sdf.format(eventDate);
    %>
        <div class="col-md-6">
            <div class="event-card">
                <div class="event-date"><%= formattedDate %></div>
                <div class="event-title"><%= title %></div>
                <div class="event-desc"><%= desc %></div>
            </div>
        </div>
    <%
            }

            rs.close();
            stmt.close();
            con.close();
        } catch(Exception e) {
            out.println("<p style='color:red;'>Database error: " + e.getMessage() + "</p>");
        }
    %>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>© 2025 श्री शिवप्रतिष्ठान हिंदुस्थान | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
