<?php
session_start();
if (isset($_SESSION['username'])) {
    header("Location: dashboard.php");
    exit();
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
</head>

<body>
    <style>
        body {
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #fff;
            padding: 2.5rem 2rem;
            border-radius: 18px;
            box-shadow: 0 8px 32px rgba(60, 60, 100, 0.18);
            text-align: center;
            min-width: 320px;
        }

        .login-container h2 {
            margin-bottom: 1.5rem;
            color: #3a3a5a;
            letter-spacing: 1px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 0.7rem;
            margin: 0.5rem 0 1rem 0;
            border: 1px solid #b0b0c3;
            border-radius: 8px;
            font-size: 1rem;
            background: #f7f8fa;
        }

        .login-container input[type="submit"] {
            background: #5a7cff;
            color: #fff;
            border: none;
            padding: 0.7rem 2.5rem;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.2s;
        }

        .login-container input[type="submit"]:hover {
            background: #3a5ccc;
        }
    </style>
    <div class="login-container">
        <h2>Login</h2>
        <form method="POST" action="proses_login.php">
            Username: <input type="text" name="username" required><br><br>
            Password: <input type="password" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>

</body>

</html>