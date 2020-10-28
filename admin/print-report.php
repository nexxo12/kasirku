<?php
include'../function/function.php';
//header("Content-type: application/vnd.ms-excel");
//header("Content-Disposition: attachment; filename=Laporan.xls");
$tgl_start = $_GET["start"];
$tgl_end = $_GET["end"];
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <title></title>
  </head>
  <body>
    <h4 align="center">LAPORAN PENJUALAN</h4>
    <h5 align="center">PERIODE <?=$tgl_start; ?> s/d <?=$tgl_end;  ?></h5>
    <table class="table table-bordered" border="0">
      <thead class="thead-dark text-center">
        <tr>
          <th scope="col" width="">Invoice</th>
          <th scope="col" width="">Barang</th>
          <th scope="col" width="10%">Tanggal</th>
          <th scope="col" width="">QTY</th>
          <th scope="col" width="">Modal</th>
          <th scope="col" width="">Jual</th>
          <th scope="col" width="">Total</th>
          <th scope="col" width="">Laba</th>
        </tr>
      </thead>
      <?php

        $no=1;
        $data_laporan = tampil_data("SELECT * FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
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
          <td colspan="3"><div style="float:right;"><strong>Subtotal</strong></div></td>
          <td><?php
            $data_laporan = tampil_data("SELECT SUM(JUMLAH_BELI) as qty FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
            foreach ($data_laporan as $qty) {
                  $total_qty = $qty["qty"];
                  echo "<strong>".$total_qty;
            }
          ?></td>
          <td>
            <?php
              $data_laporan = tampil_data("SELECT SUM(HARGA_AWAL) as hg_awal FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
              foreach ($data_laporan as $awal) {
                    $awal_harga = $awal["hg_awal"];
                    echo "<strong>".number_format( $awal_harga);
              }
            ?>
          </td>
          <td>
            <?php
              $data_laporan = tampil_data("SELECT SUM(HARGA_JUALPJ) as hg_jual FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
              foreach ($data_laporan as $jual) {
                    $jual_harga = $jual["hg_jual"];
                    echo "<strong>".number_format( $jual_harga);
              }
            ?>
          </td>
          <td>
            <?php
              $data_laporan = tampil_data("SELECT SUM(TOTAL_HARGA) as hg_total FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
              foreach ($data_laporan as $total) {
                    $total_harga = $total["hg_total"];
                    echo "<strong>".number_format($total_harga);
              }
            ?>
          </td>
          <td>
            <?php
              $data_laporan = tampil_data("SELECT SUM(LABAPJ) as laba FROM penjualan INNER JOIN master_barang ON penjualan.ID_BARANG=master_barang.ID_BARANG WHERE penjualan.TANGGAL_TRANSAKSI BETWEEN '$tgl_start' AND '$tgl_end'");
              foreach ($data_laporan as $laba) {
                    $laba_harga = $laba["laba"];
                    echo "<strong>".number_format($laba_harga);
              }
            ?>
          </td>
        </tr>
        <tr>
          <td colspan="7"><div style="float:right;">Selisih ongkir<div></td>
            <td><?php
              $data_ongkir = tampil_data("SELECT SUM(ongkir) as minogkir FROM inv_penjualan WHERE TGL_TRX BETWEEN '$tgl_start' AND '$tgl_end'");
              foreach ($data_ongkir as $ongkir) {
                    $ongkir_harga = $ongkir["minogkir"];
                    echo "<strong>".number_format($ongkir_harga);
              }
            ?></td>
        </tr>
        <tr>
          <td colspan="7"><div style="float:right;"><strong>Total</strong><div></td>
            <td><?php
              $total_laba = $laba_harga - $ongkir_harga;
              echo "<strong>".number_format($total_laba);
             ?>
           </td>
        </tr>
      </tfoot>
    </table>
  </body>
  <script type="text/javascript">
  window.print();
  </script>
</html>
