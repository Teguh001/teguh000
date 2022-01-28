<?php
$module = $_GET['module'];
?>
<li><a <?php if ($module == "") echo 'class="active"'; ?> href="./"><i class="fa fa-home"  style="color:green"></i> <span>Beranda</span></a><li>
  <div class="container"></div>
  <?php
  if (isset($_SESSION['username']) && isset($_SESSION['password'])) {
      ?>
    <li><a <?php if ($module == "admin") echo 'class="active"'; ?> href="admin"><i class="fa fa-user"  style="color:purple;"></i> <span>Admin</span></a><li>
      <div class="container"></div>	
    <li><a <?php if ($module == "penyakit") echo 'class="active"'; ?> href="penyakit"><i class="fa fa-bug"  style="color:green"></i> <span>Penyakit</span></a><li>
      <div class="container"></div>	
    <li><a <?php if ($module == "gejala") echo 'class="active"'; ?> href="gejala"><i class="fa fa-eyedropper"  style="color:red;"></i> <span>Gejala Penyakit</span></a><li>
      <div class="container"></div>
    <li><a <?php if ($module == "pengetahuan") echo 'class="active"'; ?> href="pengetahuan" ><i class="fa fa-flask"  style="color:yellow;"></i> <span>Pengetahuan</span></a><li>
      <div class="container"></div>
    <li><a <?php if ($module == "post") echo 'class="active"'; ?> href="post"><i class="fa fa-file-text"  style="color:blue;"></i> <span>Post Keterangan</span></a><li>
      <div class="container"></div>
    <li><a <?php if ($module == "password") echo 'class="active"'; ?> href="password"><i class="fa fa-edit"  style="color:brown;"></i> <span>Ganti Password</span></a><li>
      <div class="container"></div>
      <?php
  }else {
      ?>
    <li><a <?php if ($module == "diagnosa") echo 'class="active"'; ?> href="diagnosa"><i class="fa fa-search-plus"  style="color:yellow;"></i> <span>Diagnosa Gejala</span></a><li>
      <div class="container"></div>
    <li><a <?php if ($module == "riwayat") echo 'class="active"'; ?> href="riwayat"><i class="fa fa-clock-o"  style="color:darkred;"></i> <span>Riwayat Periksa</span></a><li>
      <div class="container"></div>
    <li><a <?php if ($module == "keterangan") echo 'class="active"'; ?> href="keterangan"  style="color:darkblue;"><i class="fa fa-commenting-o"></i> <span>Keterangan Penyakit</span></a><li>
      
      <div class="container"></div>
      <?php
  }
  ?>
<li><a <?php if ($module == "tentang") echo 'class="active"'; ?> href="tentang"><i class="fa fa-info-circle"></i> <span>Tentang</span></a><li>
  <div class="container"></div>