<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            margin-top: 40px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-primary">👤 Daftar User</h2>
        <div>
            <a href="formusertambah.jsp" class="btn btn-success btn-sm">➕ Tambah User</a>
            <a href="home.jsp" class="btn btn-secondary btn-sm">🏠 Home</a>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body p-0">
            <table class="table table-bordered table-striped mb-0">
                <thead class="table-dark">
                    <tr>
                        <th style="width:30%;">Username</th>
                        <th style="width:40%;">Fullname</th>
                        <th style="width:30%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.fullname}</td>
                            <td>
                                <a href="useredit.jsp?username=${user.username}" class="btn btn-warning btn-sm">✏️ Edit</a>
                                <a href="userhapus.jsp?username=${user.username}" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus user ini?');">🗑️ Hapus</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
