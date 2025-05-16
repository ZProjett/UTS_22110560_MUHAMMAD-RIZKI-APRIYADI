<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String judul = request.getParameter("judul");
    String harga = request.getParameter("harga");
    String gambar = request.getParameter("gambar");
    String jamTayang = request.getParameter("jamTayang");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Pesan Tiket</title>
    <style>
        body {
            background-color: #808080;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 40px auto;
            background-color: #808080;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 0 20px rgba(255, 92, 92, 0.7);
            text-align: center;
        }
        h1 {
            margin-bottom: 25px;
        }
        img {
            width: 220px;
            border-radius: 12px;
            margin-bottom: 20px;
            border: 3px solid #ff5c5c;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            margin-top: 6px;
            border-radius: 8px;
            border: none;
            font-size: 14px;
        }
        button {
            background-color: #ff5c5c;
            color: white;
            padding: 12px 25px;
            margin-top: 25px;
            border: none;
            border-radius: 12px;
            font-weight: bold;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #ff1f1f;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Form Pemesanan - <%= judul %></h1>
    <img src="<%= gambar %>" alt="<%= judul %>">
    <form action="struk.jsp" method="post">
        <input type="hidden" name="judul" value="<%= judul %>">
        <input type="hidden" name="harga" value="<%= harga %>">
        <input type="hidden" name="gambar" value="<%= gambar %>">

        <label>Jam Tayang:</label>
        <input type="text" name="jamTayang" value="<%= jamTayang != null ? jamTayang : "" %>" readonly>

        <label>Nama Pemesan:</label>
        <input type="text" name="nama" placeholder="Masukkan nama Anda" required>

        <label>Jumlah Tiket:</label>
        <input type="number" name="jumlah" min="1" max="10" value="1" required>

        <button type="submit">Pesan Sekarang</button>
    </form>
</div>
</body>
</html>
