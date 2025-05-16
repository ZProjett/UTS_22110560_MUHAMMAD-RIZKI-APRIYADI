<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar Film</title>
    <style>
        body {
            background-color: #808080;
            font-family: 'Segoe UI', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            padding: 20px 0;
        }
        .container {
            display: flex;
            justify-content: center;
            gap: 30px;
            padding: 30px;
            flex-wrap: wrap;
        }
        .film-card {
            background-color: #828282;
            border-radius: 16px;
            padding: 20px;
            width: 260px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
        }
        .film-card img {
            width: 100%;
            border-radius: 12px;
            margin-bottom: 10px;
        }
        select {
            padding: 6px;
            border-radius: 8px;
            border: none;
            font-size: 14px;
            margin: 10px 0;
            width: 100%;
        }
        button {
            background-color: #ff5c5c;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 10px;
            font-weight: bold;
            cursor: pointer;
        }
        button:hover {
            background-color: #ff1f1f;
        }
    </style>
</head>
<body>
<h1>Daftar Film</h1>
<div class="container">

    <!-- Minecraft Movie -->
    <div class="film-card">
        <img src="images/minecraft.jpeg" alt="Minecraft Movie">
        <h2>Minecraft Movie</h2>
        <p>Genre: Animasi, Komedi, Fantasi</p>
        <p>Durasi: 2 jam 10 menit</p>
        <p>Harga: Rp50.000</p>
        <form action="formpesan.jsp" method="post">
            <input type="hidden" name="judul" value="Minecraft Movie">
            <input type="hidden" name="harga" value="50000">
            <input type="hidden" name="gambar" value="images/minecraft.jpeg">
            <label>Jam Tayang:</label><br>
            <select name="jamTayang" required>
                <option>14:00 WIB</option>
                <option>17:00 WIB</option>
                <option>19:00 WIB</option>
            </select><br>
            <button type="submit">🎫 Pesan Tiket</button>
        </form>
    </div>

    <!-- El Camino: A Breaking Bad Movie -->
    <div class="film-card">
        <img src="images/El Camino.jpeg" alt="El Camino: A Breaking Bad Movie">
        <h2>El Camino: A Breaking Bad Movie</h2>
        <p>Genre: Crime</p>
        <p>Durasi: 2 jam 20 menit</p>
        <p>Harga: Rp40.000</p>
        <form action="formpesan.jsp" method="post">
            <input type="hidden" name="judul" value="El Camino: A Breaking Bad Movie">
            <input type="hidden" name="harga" value="40000">
            <input type="hidden" name="gambar" value="images/El Camino.jpeg">
            <label>Jam Tayang:</label><br>
            <select name="jamTayang" required>
                <option>10:00 WIB</option>
                <option>13:00 WIB</option>
                <option>16:00 WIB</option>
            </select><br>
            <button type="submit">🎫 Pesan Tiket</button>
        </form>
    </div>

    <!-- Final Destination: Bloodlines -->
    <div class="film-card">
        <img src="images/ff bloodlines.jpeg" alt="Final Destination: Bloodlines">
        <h2>Final Destination: Bloodlines</h2>
        <p>Genre: Horror</p>
        <p>Durasi: 1 jam</p>
        <p>Harga: Rp50.000</p>
        <form action="formpesan.jsp" method="post">
            <input type="hidden" name="judul" value="Final Destination: Bloodlines">
            <input type="hidden" name="harga" value="50000">
            <input type="hidden" name="gambar" value="images/ff bloodlines.jpeg">
            <label>Jam Tayang:</label><br>
            <select name="jamTayang" required>
                <option>12:00 WIB</option>
                <option>15:00 WIB</option>
                <option>18:00 WIB</option>
            </select><br>
            <button type="submit">🎫 Pesan Tiket</button>
        </form>
    </div>

</div>
</body>
</html>
