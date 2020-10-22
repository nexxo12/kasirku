<?php include'../function/function.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="shortcut icon" href="../img/favicon.ico">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/fontawesome/css/all.min.css">
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/fontawesome/js/all.min.js"></script>
    <title>Print - VSComp</title>
  </head>
  <body>
<div class="container">

  <?php $invoice = $_GET["inv"]; ?>
  <?php $data_pj = tampil_data("SELECT * FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG INNER JOIN pelanggan ON penjualan.ID_PELANGGAN=pelanggan.ID_PELANGGAN WHERE INV_PENJUALAN = '$invoice'")  ?>
  <?php foreach ($data_pj as $inv) :?>
  <?php endforeach; ?>

<table width="100%" border="0">
  <tr>
    <td rowspan="3" width="10%"><img src="../img/logo.png" alt="" style="height:130px; width:160px;"></td>
    <td width="33%">
      <h3>VSComputer Online</h3>
      <i class="fas fa-store mr-1"></i>tokopedia.com/vinoriousstore
    </td>
    <td></td>
    <td><h5>INVOICE : <?=$inv["INV_PENJUALAN"]; ?></h5><strong><?=$inv["NAMA"]; ?></strong></td>
  </tr>
  <tr>
    <td><i class="fas fa-store mr-1"></i>bukalapak.com/u/ravinorahman</td>
    <td></td>
    <td>Alamat : <?=$inv["ALAMAT"]; ?></td>
  </tr>
  <tr>
    <td><i class="fab fa-whatsapp mr-2"></i>08385-352-5037</td>
    <td></td>
    <td>Hp : <?=$inv["HP"]; ?></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td width="30%"></td>
    <td>Tanggal : <?=$inv["TANGGAL_TRANSAKSI"]; ?></td>
  </tr>

</table>
<br>
<table class="table table-border" align="center" border="0">
  <thead>
    <tr>
      <th scope="col" width="5%">No.</th>
      <th scope="col">Nama Barang</th>
      <th scope="col" width="18%">Harga (Rp.)</th>
      <th scope="col" width="7%" class="text-center">Jumlah</th>
      <th scope="col" width="20%">Subtotal (Rp.)</th>
    </tr>
  </thead>
    <tbody>
      <?php $no=1; foreach ($data_pj as $inv) :?>
          <tr>
            <td align="center"><?=$no; ?></td>
            <td><?=$inv["NAMA_BARANG"]; ?></td>
            <td ><?=number_format($inv["HARGA_JUALPJ"]); ?></td>
            <td align="center"><?=$inv["JUMLAH_BELI"]; ?></td>
            <td><?=number_format($inv["TOTAL_HARGA"]); ?></td>
          </tr>
    </tbody>
    <?php $no++; endforeach; ?>

      <!-- menampilkan total harga -->
      <?php $sum_total = tampil_data("SELECT SUM(TOTAL_HARGA) AS jumlah FROM penjualan WHERE INV_PENJUALAN = '$invoice'");?>
      <?php foreach ($sum_total as $jumlaht) {
            $total_harga = number_format($jumlaht["jumlah"]);
      } ?>
      <!-- menampilkan total jumlah -->
      <?php $sum_jumlah = tampil_data("SELECT SUM(JUMLAH_BELI) AS jumlah_beli FROM penjualan WHERE INV_PENJUALAN = '$invoice'");?>
      <?php foreach ($sum_jumlah as $jumlaht) {
            $total_beli = number_format($jumlaht["jumlah_beli"]);
      } ?>
      <tr>
        <td colspan="2" rowspan="4" class="bg-light"><h5>Catatan : </h5><ul><li>Garansi tidak berlaku apabila terjadi "Human Error"</li>
                              <li>Barang yang dibeli tidak dapat dikembalikan/ditukar (kecuali ada perjanjian)</li>
                              <li>Claim garansi silahkan hubungi opsi yang tertera diatas</li></ul></td>
        <tr>
          <td height="20%"><p style="text-align:right;">Diskon Rp. </p></td>
          <td></td>
          <td>0</td>
        </tr>
        <td><p style="text-align:right;">Subtotal Rp. </p></td>
        <td align="center"><p><?=$total_beli;  ?></p></td>
        <td><p><?=$total_harga;  ?></p></td>
        <tr>
          <td><div style="text-align:right; font-weight:bold;">Total Rp. </div></td>
          <td align="center"><p style="font-weight:bold;"><?=$total_beli;  ?></p></td>
          <td><p style="font-weight:bold;"><?=$total_harga;  ?></p></td>
        </tr>
      </tr>

</table>
<br><br>
<table class="ttd"style="float:right;" border="0" width="50%">
  <tr>
    <td><div style="text-align:center;">Tanda terima</div><br><br><br><hr></td>
    <td width="20%"></td>
    <td><div style="text-align:center;">Hormat kami</div><br><br><br><hr></td>
  </tr>
</table>
<br>
<footer>
<button type="button" style="margin-left: 45%;" class="btn btn-primary" onclick="window.print();">Cetak</button>
</footer>
</div>

<script type="text/javascript">
//window.print();
</script>
</body>
</html>
