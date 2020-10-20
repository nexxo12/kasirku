<?php include'header.php';

?>

<div class="container-fluid custom-container">
  <div class="nav-menu">
  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
      <a class="nav-link" id="home-tab" href="dasboard.php" role="tab" aria-controls="home" aria-selected="true"><i class="fas fa-home mr-2"></i>Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="contact-tab" href="pembelian.php" role="tab" aria-controls="pembelian" aria-selected="false"><i class="fas fa-shopping-cart mr-2"></i>Pembelian</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="contact-tab" href="penjualan.php" role="tab" aria-controls="penjualan" aria-selected="false"><i class="fas fa-money-bill mr-2"></i>Penjualan</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="barang-tab" href="master-barang.php" role="tab" aria-controls="master barang" aria-selected="false"><i class="fas fa-box mr-2"></i>Master Barang</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" href="master-supplier.php" role="tab" aria-controls="master supplier" aria-selected="false"><i class="fas fa-truck mr-2"></i>Master Supplier</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" href="master-customer.php" role="tab" aria-controls="master customer" aria-selected="false"><i class="fas fa-users mr-2"></i>Master Customer</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" href="garansi.php" role="tab" aria-controls="garansi" aria-selected="false"><i class="fas fa-history mr-2"></i>Garansi</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="profile-tab" href="laporan.php" role="tab" aria-controls="laporan" aria-selected="false"><i class="fas fa-newspaper mr-2"></i>Laporan</a>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">tampilan dasboard</div>
    <div class="tab-pane fade" id="pembelian" role="tabpanel" aria-labelledby="profile-tab"></div><!-- end pembelian -->
    <div class="tab-pane fade" id="penjualan" role="tabpanel" aria-labelledby="contact-tab">penjualan</div>
    <!-- tab master barang -->
    <div class="tab-pane fade" id="master-barang" role="tabpanel" aria-labelledby="profile-tab"></div> <!-- end master barang -->
    <!-- master supplier start -->
    <div class="tab-pane fade" id="master-supplier" role="tabpanel" aria-labelledby="contact-tab"></div> <!-- end master supplier -->
    <div class="tab-pane fade" id="master-customer" role="tabpanel" aria-labelledby="profile-tab">master customer</div>
    <div class="tab-pane fade" id="garansi" role="tabpanel" aria-labelledby="contact-tab">Garansi</div>

    <div class="tab-pane fade show active" id="news" role="tabpanel" aria-labelledby="contact-tab">

      <div class="form-input">
        <form class="form-inline" action="" method="post">
          <input class="form-control mr-sm-2 datepicker" type="text" placeholder="yyyy/mm/dd"  name="tgl_awal" autocomplete="off" required>
          <p class="mr-2" style="margin-top:15px;">s/d</p>
          <input class="form-control mr-sm-2 datepicker" type="text" placeholder="yyyy/mm/dd"  name="tgl_akhir" autocomplete="off" required>
          <button class="btn btn-primary" type="submit" name="cari"><i class="fas fa-search"></i></button>
        </form>

        <br>
        <?php
            if (isset($_POST["cari"])) {

         ?>
        <div style="overflow-x:auto;">
          <h5 class="text-center">Data periode <?=$_POST["tgl_awal"]  ?> s/d <?=$_POST["tgl_akhir"]  ?></h5>
        <a href="print-report.php?start=<?=$_POST["tgl_awal"]  ?>&end=<?=$_POST["tgl_akhir"]  ?>" target="_blank"><button class="btn btn-info mb-2" type="submit" name="cari"><i class="fas fa-print"></i></button></a>
        <table class="table table-bordered ">
          <thead class="thead-dark text-center">
            <tr>
              <th scope="col" width="">Invoice</th>
              <th scope="col" width="">Barang</th>
              <th scope="col" width="10%">Tanggal</th>
              <th scope="col" width="">QTY</th>
              <th scope="col" width="">Modal</th>
              <th scope="col" width="">Harga Jual</th>
              <th scope="col" width="">Total</th>
              <th scope="col" width="">Laba</th>
            </tr>
          </thead>
          <?php

            $no=1;
            $data_laporan = tampil_data("SELECT * FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG ORDER BY INV_PENJUALAN ASC");
            $data_laporan = carilaporan($_POST);
            ?>
            <?php $no=1; foreach ($data_laporan as $laporan) : ?>
            <tbody>
              <tr>
                <td align="center"><?= $laporan["INV_PENJUALAN"]; ?></td>
                <td><?= $laporan["NAMA_BARANG"]; ?></td>
                <td align="center"><?= $laporan["TANGGAL_TRANSAKSI"]; ?></td>
                <td align="center"><?= $laporan["JUMLAH_BELI"]; ?></td>
                <td align="center"><?= number_format($laporan["HARGA_AWAL"]); ?></td>
                <td align="center"><?= number_format($laporan["HARGA_JUALPJ"]); ?></td>
                <td align="center"><?= number_format($laporan["TOTAL_HARGA"]); ?></td>
                <td align="center"><?= number_format($laporan["LABAPJ"]); ?></td>
              </tr>
            </tbody>
          <?php $no++; endforeach; ?>
          <tfoot class="text-center">
            <tr>
              <td colspan="3"><h5>Grand Total</h5></td>
              <td><?php
                $tgl_awal = $_POST["tgl_awal"];
                $tgl_akhir = $_POST["tgl_akhir"];
                $data_laporan = tampil_data("SELECT SUM(JUMLAH_BELI) as qty FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_awal' AND '$tgl_akhir'");
                foreach ($data_laporan as $qty) {
                      $total_qty = $qty["qty"];
                      echo "<strong>".$total_qty;
                }
              ?></td>
              <td>
                <?php
                  $data_laporan = tampil_data("SELECT SUM(HARGA_AWAL) as hg_awal FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_awal' AND '$tgl_akhir'");
                  foreach ($data_laporan as $awal) {
                        $awal_harga = $awal["hg_awal"];
                        echo "<strong>".number_format( $awal_harga);
                  }
                ?>
              </td>
              <td>
                <?php
                  $data_laporan = tampil_data("SELECT SUM(HARGA_JUALPJ) as hg_jual FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_awal' AND '$tgl_akhir'");
                  foreach ($data_laporan as $jual) {
                        $jual_harga = $jual["hg_jual"];
                        echo "<strong>".number_format( $jual_harga);
                  }
                ?>
              </td>
              <td>
                <?php
                  $data_laporan = tampil_data("SELECT SUM(TOTAL_HARGA) as hg_total FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_awal' AND '$tgl_akhir'");
                  foreach ($data_laporan as $total) {
                        $total_harga = $total["hg_total"];
                        echo "<strong>".number_format($total_harga);
                  }
                ?>
              </td>
              <td>
                <?php
                  $data_laporan = tampil_data("SELECT SUM(LABAPJ) as laba FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_awal' AND '$tgl_akhir'");
                  foreach ($data_laporan as $laba) {
                        $laba_harga = $laba["laba"];
                        echo "<strong>".number_format($laba_harga);
                  }
                ?>
              </td>
            </tr>
          </tfoot>
        </table>
        <?php
          }
         ?>
         </div>
    </div>

    </div> <!-- end news -->
    <div class="tab-pane fade" id="promo" role="tabpanel" aria-labelledby="contact-tab">promo</div>

  </div> <!-- end tab-content -->

</div>
</div> <!-- end container -->

<br><br><br><br><br>

<script type="text/javascript">
 $(function(){
  $(".datepicker").datepicker({
      format: 'yyyy-mm-dd',
      autoclose: true,
      todayHighlight: true,
  });
 });
</script>
</body>
</html>
