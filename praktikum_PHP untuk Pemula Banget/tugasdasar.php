<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Pengecekan Status Usia</title>
    <style>
        body {
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            min-height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            background: #fff;
            border-radius: 18px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.12);
            padding: 38px 32px 28px 32px;
            width: 350px;
            text-align: center;
            animation: fadeIn 1s;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px);}
            to { opacity: 1; transform: translateY(0);}
        }
        h1 {
            color: #f76d3c;
            margin-bottom: 18px;
            letter-spacing: 1px;
        }
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }
        label {
            font-weight: 500;
            color: #555;
            margin-bottom: 6px;
            display: block;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 9px 12px;
            border: 1.5px solid #fda085;
            border-radius: 7px;
            font-size: 16px;
            margin-top: 2px;
            background: #f9f9f9;
            transition: border 0.2s;
        }
        input[type="text"]:focus, input[type="number"]:focus {
            border-color: #f76d3c;
            outline: none;
        }
        button {
            width: 100%;
            padding: 11px;
            background: linear-gradient(90deg, #fda085 0%, #f76d3c 100%);
            color: #fff;
            border: none;
            border-radius: 7px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
            transition: background 0.2s;
        }
        button:hover {
            background: linear-gradient(90deg, #f76d3c 0%, #fda085 100%);
        }
        .output {
            margin-top: 28px;
            padding: 18px 10px;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 0.5px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.06);
            animation: fadeIn 0.7s;
        }
        .dewasa {
            background: #e0ffe7;
            color: #1e7e34;
            border: 1.5px solid #34d17c;
        }
        .belum {
            background: #fff0f0;
            color: #c82333;
            border: 1.5px solid #ff7b7b;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>Status Usia Anda</h1>
        <form method="post" autocomplete="off">
            <div class="input-group">
                <label for="nama">Nama Lengkap</label>
                <input type="text" id="nama" name="nama" placeholder="Masukkan nama Anda" required>
            </div>
            <div class="input-group">
                <label for="umur">Usia (tahun)</label>
                <input type="number" id="umur" name="umur" min="0" max="120" placeholder="Contoh: 21" required>
            </div>
            <button type="submit">Periksa Status</button>
        </form>
        <?php
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                $nama = htmlspecialchars(trim($_POST['nama']));
                $umur = intval($_POST['umur']);
                if ($umur < 0 || $umur > 120) {
                        echo "<div class='output belum'>Usia tidak valid. Silakan masukkan angka yang benar.</div>";
                } else if ($umur >= 18) {
                        echo "<div class='output dewasa'>Halo, <b>$nama</b>! Anda sudah <span style='color:#f76d3c;'>DEWASA</span> 🎉</div>";
                } else {
                        echo "<div class='output belum'>Hai, <b>$nama</b>! Anda masih <span style='color:#c82333;'>BELUM DEWASA</span> 😊</div>";
                }
        }
        ?>
    </div>
</body>
</html>