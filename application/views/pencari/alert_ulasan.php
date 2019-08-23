<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  /* Set the size of the div element that contains the map */
  #map {
    height: 900px;  /* The height is 400 pixels */
    width: 100%;  /* The width is the width of the web page */
  }
  .checked {
  color: orange;
}
</style>
</head>
<!-- Main Styles -->

<body class="hold-transition login-page">
<?php
$this->load->view('pencari/header_user');
?>
<div class="login-box">
  <div class="login-logo">
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg"><img style="width: 70px;height: 70px;" src="<?php echo base_url('assets/images/checked.png');""?>"></p>

    <form action="../../index2.html" method="post">

     <center><p style="font-style: calibri; font-size: 18px; color: #3CB371;"><b>Ulasan anda berhasil terkirim</b></p>
     	Ulasan kamu tersimpan <a href="<?php echo base_url('Pencari/get_tampil_ulasan');?>">di sini </a>dan akan dipublikasikan bila telah disetujui
     </center>
    </form>
</di>
</div>
</div>
</body>

</html>