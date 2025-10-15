<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>सदस्य नोंदणी फॉर्म - दुर्ग संवर्धन व स्वच्छता संस्था</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Devanagari:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            background: linear-gradient(to bottom right, #fff4e6, #ffffff);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 550px;
            margin-top: 70px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.15);
            padding: 30px 25px;
        }

        h2 {
            text-align: center;
            color: #d35400;
            margin-bottom: 25px;
        }

        label {
            font-weight: bold;
            color: #444;
        }

        .btn-submit {
            background-color: #ff7b00;
            color: white;
            font-weight: bold;
            border-radius: 10px;
            transition: 0.3s;
            width: 100%;
        }

        .btn-submit:hover {
            background-color: #e06700;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #333;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>सदस्य नोंदणी फॉर्म</h2>

    <form action="Usercontroller" method="get" accept-charset="UTF-8">
        <div class="mb-3">
            <label for="name" class="form-label">नाव</label>
            <input type="text" id="name" name="name" class="form-control" placeholder="आपले पूर्ण नाव मराठीत लिहा" required>
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">पत्ता</label>
            <textarea id="address" name="address" class="form-control" placeholder="आपला पूर्ण पत्ता मराठीत लिहा" required></textarea>
        </div>

        <div class="mb-3">
            <label for="phone" class="form-label">मोबाईल क्रमांक</label>
            <input type="tel" id="phone" name="phone" class="form-control" pattern="[0-9]{10}" placeholder="उदा. 9876543210" required>
        </div>

        <div class="mb-3">
            <label for="age" class="form-label">वय</label>
            <input type="number" id="age" name="age" class="form-control" min="10" max="120" placeholder="आपले वय" required>
        </div>
        
          <div class="mb-3">
            <label for="email" class="form-label">ई-मेल</label>
            <input type="email" id="email" name="email" class="form-control" placeholder="उदा. rohan@example.com" required>
        </div>


        <button type="submit" class="btn btn-submit">नोंदणी करा</button>
    </form>

    <a href="index.jsp" class="back-link">← मुख्यपृष्ठावर जा</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
