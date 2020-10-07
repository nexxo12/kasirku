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
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="shortcut icon" href="../img/favicon.ico">
  <title>Dasboard - VSComp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../assets/css/datatables.min.css">
  <link rel="stylesheet" href="../assets/css/datepicker.css">
  <link rel="stylesheet" href="../assets/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="../assets/css/admin.css?v=1.0">
  <script src="../assets/js/jquery-3.5.1.min.js"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/fontawesome/js/all.min.js"></script>
  <script src="../assets/js/sweetalert.min.js"></script>
  <script src="../assets/js/datatables.min.js"></script>
  <script src="../assets/js/bootstrap-datepicker.js"></script>
  <script src="../assets/js/Chart.bundle.min.js"></script>
  <script src="../assets/js/count.js"></script>
  <script src="../assets/ckeditor/ckeditor.js"></script>
</head>
<body>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top primary-nav" id="nav">
    <div class="container-fluid">
    <a class="navbar-brand" href="dasboard.php">
    <img src="../img/LOGO+TEXT.png" alt="Logo" id="logo"></img>
    <h3 style="display:inline; margin-top:30%">Admin Page</h3>
    </a>
   <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <?php echo $row["NAMA"]; ?> <i class="fas fa-user"></i>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="setting.php">Setting</a>
          <a class="dropdown-item" href="tambah-akun.php">Tambah Akun</a>
          <a class="dropdown-item" href="logout.php">Log Out</a>

        </div>
        <li class="nav-item">
          <a class="nav-link" href="#"> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"> </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"> </a>
        </li>
      </li>
    </ul>
  </div>
  </nav>
</div>
<br>
