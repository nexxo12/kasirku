<body>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top primary-nav" id="nav">
    <div class="container-fluid">
    <a class="navbar-brand" href="dasboard.php">
    <img src="../img/logo1.png" alt="Logo" id="logo"></img>
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
