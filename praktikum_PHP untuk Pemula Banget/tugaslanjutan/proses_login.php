<?php
session_start();

$valid_user = "admin";
$valid_pass = "12345";

$username = $_POST['username'];
$password = $_POST['password'];

if ($username == $valid_user && $password == $valid_pass) {
    $_SESSION['username'] = $username;
    header("Location: dashboard.php");
} else {
    echo "<p>Login gagal! Username atau password salah.</p>";
    echo '<p><a href="login.php">Coba lagi</a></p>';
}
?>