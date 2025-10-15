<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>नोंदणीकृत सदस्यांची यादी</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            background-color: #fffaf0;
        }
        
        .container h1{
        	 font-size: 2.5rem;
           margin: 0 0 10px 0;
          text-decoration:none;
          font-weight:normal;
           color: #333;
           padding: 50px 20px;
           text-align: center;
       }

       

      

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
        
        h1 {
            margin-top: 40px;
            color: #2e8b57;
            font-weight: bold;
            text-align: center;
        }

        table {
            margin-top: 40px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        th {
            background-color: orange;
            color: white;
            text-align: center;
        }

        td {
            text-align: center;
        }

        footer {
            background-color: orange;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 50px;
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

<div class="container">
    <h1>नोंदणीकृत सदस्यांची यादी</h1>

    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                
                <th>नाव</th>
                <th>पत्ता</th>
                <th>मोबाईल नंबर</th>
               
            </tr>
        </thead>
        <tbody>
            <%
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/durg", "root", "root");

                    String sql = "SELECT  name, address,number FROM user";
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();

                    while(rs.next()) {
            %>
            <tr>
               
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("address") %></td>
                <td><%= rs.getString("number") %></td>
                
            </tr>
            <%
                    }
                } catch(Exception e) {
                    out.println("<tr><td colspan='6' style='color:red; text-align:center;'>त्रुटी: "+e.getMessage()+"</td></tr>");
                } finally {
                    try { if(rs!=null) rs.close(); if(ps!=null) ps.close(); if(con!=null) con.close(); } catch(Exception ex) {}
                }
            %>
        </tbody>
    </table>
</div>

<footer>
    <p>© 2025 दुर्ग संवर्धन व स्वच्छता संस्था | Developed by Dharkari</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
