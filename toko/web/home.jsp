<%@ page import="javax.servlet.http.HttpSession" %>
<%
    String fullname = (String) session.getAttribute("fullname");
    if (fullname == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Home - Toko ATK</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: radial-gradient(circle at top left, #1f1c2c, #928dab);
            color: #fff;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .home-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 50px 40px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.2);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }

        .home-card h1 {
            font-size: 28px;
            font-weight: 600;
            color: #00ffe7;
        }

        .home-card h4 {
            font-size: 20px;
            color: #aaa;
            margin-bottom: 30px;
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

        .btn-logout {
            background: linear-gradient(45deg, #ff4d4d, #ff1a1a);
        }

        .btn-logout:hover {
            background: linear-gradient(45deg, #ff1a1a, #ff4d4d);
        }

        .d-grid .btn {
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="home-card">
        <h1>Selamat Datang</h1>
        <h4><%= fullname %></h4>

        <div class="d-grid gap-3 mt-4">
            <a href="userlist.jsp" class="btn btn-futuristic">Kelola User</a>
            <a href="baranglist.jsp" class="btn btn-futuristic">Kelola Barang</a>
            <a href="formsalestambah.jsp" class="btn btn-futuristic">Tambah Transaksi</a>
            <a href="logout.jsp" class="btn btn-logout">Logout</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
