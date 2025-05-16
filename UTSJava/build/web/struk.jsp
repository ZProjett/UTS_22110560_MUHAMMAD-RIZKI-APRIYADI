<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- deklarasi fungsi di sini --%>
<%! 
    // Fungsi format rupiah tanpa desimal
    public String formatRupiah(int angka) {
        String angkaStr = Integer.toString(angka);
        StringBuilder sb = new StringBuilder();

        int len = angkaStr.length();
        int count = 0;

        for (int i = len - 1; i >= 0; i--) {
            sb.append(angkaStr.charAt(i));
            count++;
            if (count == 3 && i != 0) {
                sb.append('.');
                count = 0;
            }
        }

        return "Rp " + sb.reverse().toString();
    }
%>

<%
    String judul = request.getParameter("judul");
    String harga = request.getParameter("harga");
    String gambar = request.getParameter("gambar");
    String jamTayang = request.getParameter("jamTayang");
    String nama = request.getParameter("nama");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));

    int hargaInt = Integer.parseInt(harga);
    int totalHarga = jumlah * hargaInt;

    String hargaFormat = formatRupiah(hargaInt);
    String totalHargaFormat = formatRupiah(totalHarga);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Struk Pemesanan</title>
    <style>
        body {
            background-color: #808080;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 450px;
            margin: 40px auto;
            background-color: #808080;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 0 20px rgba(255, 92, 92, 0.7);
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
            color: white;
        }
        img {
            width: 220px;
            border-radius: 12px;
            margin-bottom: 20px;
            border: 3px solid #ff5c5c;
        }
        p {
            font-size: 16px;
            margin: 8px 0;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Struk Pemesanan</h1>
    <img src="<%= gambar %>" alt="<%= judul %>">
    <p><strong>Film:</strong> <%= judul %></p>
    <p><strong>Jam Tayang:</strong> <%= jamTayang %></p>
    <p><strong>Nama Pemesan:</strong> <%= nama %></p>
    <p><strong>Jumlah Tiket:</strong> <%= jumlah %></p>
    <p><strong>Harga per Tiket:</strong> <%= hargaFormat %></p>
    <p><strong>Total Harga:</strong> <%= totalHargaFormat %></p>
</div>
</body>
</html>
