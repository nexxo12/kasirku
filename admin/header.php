<?php
include'../function/function.php';
session_start();
//cek sudah login?
$user = $_SESSION['username'];
if (!isset($_SESSION['username'])) {
    header("location: ../index.php");
}
$hasil = mysqli_query($conn, "SELECT *  FROM login WHERE USERNAME = '$user'");
$row = mysqli_fetch_assoc($hasil);

if (isset($_SESSION["LEVEL"]) != "super") {
    session_destroy();
    header("location: ../index.php");
}
?>
