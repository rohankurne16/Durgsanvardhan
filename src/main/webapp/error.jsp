<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="mr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>त्रुटी - नोंदणी अयशस्वी</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans Devanagari', sans-serif;
            background: linear-gradient(to bottom right, #ffe6e6, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .error-box {
            background-color: #ff4c4c;
            color: white;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
            text-align: center;
            animation: shake 0.5s;
        }

        .error-box h2 {
            font-size: 26px;
            margin-bottom: 15px;
        }

        .error-box p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn-back {
            background-color: white;
            color: #ff4c4c;
            font-weight: bold;
            padding: 10px 25px;
            border-radius: 10px;
            text-decoration: none;
            transition: 0.3s;
        }

        .btn-back:hover {
            background-color: #ffe6e6;
        }

        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-8px); }
            50% { transform: translateX(8px); }
            75% { transform: translateX(-8px); }
            100% { transform: translateX(0); }
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h2>⚠️ नोंदणी अयशस्वी</h2>
        <p>काहीतरी चुकले आहे. कृपया पुन्हा प्रयत्न करा.</p>
        <a href="join.jsp" class="btn-back">← पुन्हा नोंदणी करा</a>
    </div>
</body>
</html>
