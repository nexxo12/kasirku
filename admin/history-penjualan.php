<?php include'header.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="shortcut icon" href="../img/favicon.ico">
  <title>History Penjualan - VSComp</title>

<?php include'header-title.php';  ?>
<?php include'header-nav.php';?>

<div class="container-fluid custom-container">
  <div class="nav-menu">
  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
      <a class="nav-link" id="home-tab"  href="dasboard.php" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-home mr-2"></i>Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="contact-tab"  href="pembelian.php" role="tab" aria-controls="pembelian" aria-selected="false"><i class="fas fa-shopping-cart mr-2"></i>Pembelian</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" id="contact-tab"  href="penjualan.php" role="tab" aria-controls="penjualan" aria-selected="false"><i class="fas fa-money-bill mr-2"></i>Penjualan</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="barang-tab"  href="master-barang.php" role="tab" aria-controls="master barang" aria-selected="false"><i class="fas fa-box mr-2"></i>Master Barang</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab"  href="master-supplier.php" role="tab" aria-controls="master supplier" aria-selected="false"><i class="fas fa-truck mr-2"></i>Master Supplier</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab"  href="master-customer.php" role="tab" aria-controls="master customer" aria-selected="false"><i class="fas fa-users mr-2"></i>Master Customer</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab"  href="garansi.php" role="tab" aria-controls="garansi" aria-selected="false"><i class="fas fa-history mr-2"></i>Garansi</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" href="laporan.php" role="tab" aria-controls="laporan" aria-selected="false"><i class="fas fa-newspaper mr-2"></i>Laporan</a>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">tampilan dasboard</div>
    <div class="tab-pane fade" id="pembelian" role="tabpanel" aria-labelledby="profile-tab">pembelian</div>

    <!-- penjualan start -->
    <div class="tab-pane fade show active" id="penjualan" role="tabpanel" aria-labelledby="contact-tab">
    <br>
    <div class="card">
      <h5 class="card-header">History Penjualan</h5>
    <div class="card-body">

      <table class="table table-bordered table-responsive-sm" id="tabel-data" width="120%">
        <thead class="thead-dark ">
          <tr>
            <th scope="col" width="" class="text-center">Invoice</th>
            <th scope="col" width="10px" class="text-center">Invoice online</th>
            <th scope="col" width="" class="text-center">Nama Barang</th>
            <th scope="col" width="" class="text-center">Total Transaksi</th>
            <th scope="col" width="" class="text-center">Tanggal</th>
            <th scope="col" width="" class="text-center">- ongkir</th>
            <th scope="col" width="" class="text-center">+ ongkir</th>
            <th scope="col" width="" class="text-center">Pot 1%</th>
            <th scope="col" width="" class="text-center">Cashback</th>
            <th scope="col" width="10%" class="text-center">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $data_inv = tampil_data("SELECT * FROM inv_penjualan")  ?>
          <?php foreach ($data_inv as $inv) :?>
          <tr>
            <td align="center"><?=$inv["id_inv"]; ?></td>
            <td><?=$inv["inv_ol"]; ?></td>
            <td><?=$inv["BARANG"]; ?></td>
            <td align="center">Rp. <?=number_format($inv["GRAND_TOTAL"]); ?></td>
            <td align="center"><?=$inv["TGL_TRX"]; ?></td>
            <td align="center">Rp. <?=number_format($inv["ongkir"]); ?></td>
            <td align="center">Rp. <?=number_format($inv["laba_ongkir"]); ?></td>
            <td align="center">Rp. <?=number_format($inv["potongan"]); ?></td>
            <td align="center">Rp. <?=number_format($inv["cashback"]); ?></td>
            <td align="center">
              <a href="detail.php?id=<?=$inv["id_inv"]; ?>"><button class="btn btn-success" type="submit" name="detail" value=""><i class="fas fa-list"></i></button></a>
              <a href="print-view.php?inv=<?=$inv["id_inv"]; ?>" target="_blank"><button class="btn btn-info" type="submit" name="print" value=""><i class="fas fa-print"></i></button></a>
              <a href="?edit=<?=$inv["id_inv"]; ?>"><button class="btn btn-warning" type="submit" name="ubah" value=""><i class="fas fa-edit"></i></button></a>
              <a href="delete-h.php?id=<?=$inv["id_inv"]; ?>"><button class="btn btn-danger" type="submit" name="delete" value="" onclick="return confirm('Apakah anda yakin ?');"><i class="fas fa-trash"></i></button></a>
            </td>
          </tr>

        <?php endforeach; ?>
        </tbody>
      </table>

      <a href="penjualan.php"><button class="btn btn-primary" type="submit" name="kembali" value="" style="margin-left:45%;">Kembali</button></a>
      <?php
        if (isset($_GET["edit"])) {
          $editv = $_GET["edit"];
          $list_inv = tampil_data("SELECT * FROM inv_penjualan WHERE id_inv = '$editv'")[0];

      ?>
      <div class="card card-historypj">
        <h5 class="card-header">Edit log penjualan <?=$editv; ?></h5>
      <div class="card-body">
      <form class="" action="" method="POST">
      <table class="table-group" cellpadding="4" align="center" border="0" width="100%">
        <tr>
          <td>
            <label for="exampleInputEmail1">Nama Barang : </label>
            <input type="text" class="form-control" name="barang" placeholder="" value="<?=$list_inv["BARANG"];  ?>" autofocus autocomplete="off">
          </td>
        </tr>
        <tr>
          <td>
            <label for="exampleInputEmail1">Invoice online : </label>
            <input type="text" class="form-control" name="inv_ol" placeholder="" value="<?=$list_inv["inv_ol"];  ?>" autofocus autocomplete="off">
            <input type="hidden" name="inv_pj" value="<?=$list_inv["id_inv"];  ?>">
          </td>
        </tr>
        <tr>
          <td>
            <label for="exampleInputEmail1">Selisih ongkir : </label>
            <input type="number" class="form-control" name="min_ongkir" placeholder="" value="<?=$list_inv["ongkir"];  ?>" autofocus autocomplete="off">
          </td>
        </tr>
        <tr>
          <td>
            <label for="exampleInputEmail1">Lebih ongkir : </label>
            <input type="number" class="form-control" name="plus_ongkir" placeholder="" value="<?=$list_inv["laba_ongkir"];  ?>" autofocus autocomplete="off">
          </td>
        </tr>
        <tr>
          <td>
            <label for="exampleInputEmail1">Pot 1% : </label>
            <input type="number" class="form-control" name="potongan" placeholder="" value="<?=$list_inv["potongan"];  ?>" autofocus autocomplete="off">
          </td>
        </tr>
        <tr>
          <td>
            <label for="exampleInputEmail1">Cashback : </label>
            <input type="number" class="form-control" name="cashback" placeholder="" value="<?=$list_inv["cashback"];  ?>" autofocus autocomplete="off">
          </td>
        </tr>
      </table>
      <button class="btn btn-success mt-2 ml-1"  type="submit" name="save"><i class="fas fa-save mr-2"></i>Save</button>
    </form>
      <a href="history-penjualan.php"><button class="btn btn-danger mt-2 ml-1" type="submit" name="kembali" value="" style=""><i class="fas fa-arrow-left"></i></button></a>
    </div>
    </div>
      <?php
        }
        if (isset($_POST["save"])) {
          if (editinvpj($_POST) > 0) {
            echo "<script language=\"javascript\">
            swal({
                  title: \"Berhasil!\",
                  text: \"Data log berhasil ditambahkan!\",
                  icon: \"success\",
                  button: \"OK\",
                }).then((oke) => {
                  document.location.href = 'history-penjualan.php';
                  });;

            </script>";

          }

          else {
            echo mysqli_error($conn);
          }
        }
      ?>
    </div> <!-- end card body -->
  </div> <!-- end card -->


    </div> <!-- end penjualan -->
    <!-- tab master barang -->
    <div class="tab-pane fade" id="master-barang" role="tabpanel" aria-labelledby="profile-tab"></div> <!-- end master barang -->
    <!-- master supplier start -->
    <div class="tab-pane fade" id="master-supplier" role="tabpanel" aria-labelledby="contact-tab"></div> <!-- end master supplier -->
    <div class="tab-pane fade" id="master-customer" role="tabpanel" aria-labelledby="profile-tab">master customer</div>
    <div class="tab-pane fade" id="garansi" role="tabpanel" aria-labelledby="contact-tab">Garansi</div>
    <div class="tab-pane fade" id="news" role="tabpanel" aria-labelledby="contact-tab">news</div>
    <div class="tab-pane fade" id="promo" role="tabpanel" aria-labelledby="contact-tab">promo</div>

  </div> <!-- end tab-content -->

</div> <!-- end nav menu -->
</div> <!-- end container -->

<br><br><br><br><br>

<script type="text/javascript">
$(document).ready(function(){
    $('#tabel-data').DataTable({
      "scrollY": 600,
      "scrollX": true
    });
});
</script>
</body>
<?php include'footer.php';?>
</html>
