<?php
session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Halaman Utama</title>
    <style>
        body {
            background: linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%);
            min-height: 100vh;
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .dashboard {
            width: 90%;
            max-width: 500px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
            padding: 40px 32px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .dashboard h1 {
            color: #22223b;
            margin-bottom: 12px;
            font-size: 2rem;
        }

        .dashboard p {
            color: #4a4e69;
            margin-bottom: 32px;
            font-size: 1.1rem;
        }

        .logout-btn {
            background: #ff6f61;
            color: #fff;
            border: none;
            padding: 12px 32px;
            border-radius: 6px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.2s;
            text-decoration: none;
        }

        .logout-btn:hover {
            background: #d7263d;
        }
    </style>
</head>

<body>
    <div class="dashboard">
        <h1>Halo, <?php echo strtoupper(htmlspecialchars($_SESSION['username'])); ?>!</h1>
        <p>Anda telah berhasil masuk ke dashboard aplikasi. Silakan gunakan menu di bawah untuk keluar.</p>
        <a href="logout.php" class="logout-btn">Keluar</a>
    </div>
</body>

</html>