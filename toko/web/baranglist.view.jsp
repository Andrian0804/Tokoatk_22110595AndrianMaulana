<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="tokoatk2.Barang, java.util.ArrayList" %>
    <%
    ArrayList<Barang> allBarangList = Barang.getList();
    ArrayList<Barang> barangList = new ArrayList<>();
    for (Barang b : allBarangList) {
        if (b.isActive()) { // Cuma tampilkan yang aktif
            barangList.add(b);
        }
    }
    pageContext.setAttribute("barangList", barangList);
    // Tambah list barang non-aktif buat opsi aktifkan
    ArrayList<Barang> inactiveBarangList = new ArrayList<>();
    for (Barang b : allBarangList) {
        if (!b.isActive()) { // Ambil yang non-aktif
            inactiveBarangList.add(b);
        }
    }
    pageContext.setAttribute("inactiveBarangList", inactiveBarangList);
%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Daftar Barang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
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
        <h2 class="text-primary">📦 Daftar Barang</h2>
        <div>
            <a href="formtambahbarang.jsp" class="btn btn-success btn-sm">➕ Tambah Barang</a>
            <a href="home.jsp" class="btn btn-secondary btn-sm">🏠 Home</a>
        </div>
    </div>

    <div class="card shadow-sm">
        <div class="card-body p-0">
            <table class="table table-bordered table-striped mb-0">
                <thead class="table-dark">
                    <tr>
                        <th style="width:5%;">No</th>
                        <th style="width:15%;">ID Barang</th>
                        <th style="width:30%;">Nama Barang</th>
                        <th style="width:20%;">Harga</th>
                        <th style="width:10%;">Stok</th>
                        <th style="width:20%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="no" value="1" />
                    <c:forEach var="barang" items="${barangList}">
                        <tr>
                            <td>${no}</td>
                            <td>${barang.id}</td>
                            <td>${barang.nama}</td>
                            <td>Rp <fmt:formatNumber value="${barang.harga}" type="number" groupingUsed="true"/></td>
                            <td>${barang.stok}</td>
                            <td>
                                <a href="barangedit.jsp?id=${barang.id}" class="btn btn-warning btn-sm">✏️ Edit</a>
                                <a href="baranghapus.jsp?id=${barang.id}" class="btn btn-danger btn-sm" onclick="return confirm('Yakin ingin menghapus barang ini?');">🗑️ Hapus</a>
                            </td>
                        </tr>
                        <c:set var="no" value="${no + 1}" />
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
             function saveNama() {
            const newName = document.getElementById('editNamaInput').value.trim();
            if (newName && editId) {
                console.log("Save Nama: ID = " + editId + ", New Name = " + newName);
                $.ajax({
                    url: "api.baranggantinama.jsp",
                    method: "POST",
                    data: { id: editId, namabaru: newName },
                    async: true,
                    success: function(result) {
                        console.log("Response from server: " + result);
                        result = result.trim();
                        if (result.toLowerCase().includes("ok")) { // Cek apakah ada "ok" di response
                            window.location.href = "baranglist.jsp";
                            window.location.reload(); // Force reload setelah redirect
                        } else {hideEditNamaPopup();
                            console.log("Gagal: Response = " + result);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.log("AJAX Error: " + status + " - " + error);
                        hideEditNamaPopup();
                    }
                });
            } else {
                console.log("Save Nama: Input kosong atau ID tidak valid");
                hideEditNamaPopup();
            }
        }


                    </script>
</body>
</html>
