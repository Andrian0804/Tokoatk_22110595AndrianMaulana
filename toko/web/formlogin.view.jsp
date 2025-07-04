<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login - Toko ATK</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: radial-gradient(circle at top left, #1f1c2c, #928dab);
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .login-card h1 {
            font-size: 26px;
            font-weight: 600;
            margin-bottom: 10px;
            color: #00ffe7;
        }

        .login-card h2 {
            font-size: 18px;
            color: #aaa;
            margin-bottom: 30px;
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.1);
            border: none;
            border-radius: 10px;
            color: #fff;
        }

        .form-control::placeholder {
            color: #ccc;
        }

        .btn-futuristic {
            background: linear-gradient(45deg, #00ffe7, #0072ff);
            border: none;
            color: #fff;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-futuristic:hover {
            background: linear-gradient(45deg, #0072ff, #00ffe7);
        }
    </style>
</head>
<body>
    <div class="login-card text-center">
        <h1>LOGIN</h1>
        <h2>Toko ATK</h2>
        <form action="login.jsp" method="post">
            <div class="mb-3 text-start">
                <input type="text" class="form-control" name="username" placeholder="Username" required>
            </div>
            <div class="mb-4 text-start">
                <input type="password" class="form-control" name="password" placeholder="Password" required>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-futuristic btn-lg">Masuk</button>
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
