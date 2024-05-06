<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả thống kê</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .header {
            background-color: #00796b; /* Màu xanh than */
            color: #fff;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            padding: 20px;
            text-align: center;
        }
        h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
        }
        .result {
            padding: 20px;
            text-align: center;
        }
        p {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }
        .percentage {
            font-size: 24px;
            font-weight: bold;
            color: #00796b; /* Màu xanh than */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Kết quả thống kê</h1>
        </div>
        <div class="result">
            <p>Số câu trả lời đúng: <span>{{ $soCauTraLoiDung }}</span></p>
            <p>Tổng số câu hỏi: <span>{{ $tongSoCauHoi }}</span></p>
            <p>Phần trăm câu trả lời đúng: <span class="percentage">{{ $phanTramDung }}%</span></p>
        </div>
    </div>
</body>
</html>
