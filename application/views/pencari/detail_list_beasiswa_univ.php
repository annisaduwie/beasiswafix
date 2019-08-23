<?php
$this->load->view('pencari/header_user');
// echo '<pre>';
// var_dump($hasil);
// echo '</pre>';
// exit;
?>


<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

<?php foreach ($hasil as $value):?>
  <div class="container" style="padding-top: 30px; ">
     <div class="row">
    <div class="col-md-3">
    <img src="<?php echo base_url();?>assets/images/information.png" style="height: 200px; width: 200px;" class="img-fluid" alt="img13" /> 
    </div> 
    <div class="col-md-9">
        
   <h3 style="color:#fff; margin-top: 50px;"><?php echo $value['title'];?><br></h3>
 </div>
</div>

    </div>
  <?php endforeach ?>
  </section>

  <section class="main-block light-bg" id="section">
    <div class="container" style="padding-bottom: 50px;">

     <!-- Post -->
  <div class="post">


        <div class="user-block">
          <div class="row">

          <div class="col-md-12 featured-responsive">
            <h4><i class="fa fa-th-list"> Informasi Persyaratan</h4></i><br>
     
      <?php echo $value['description'];?>
   </div>
 </div>
    </div>
  </div>
</div>
</section>

    <!--============================= FOOTER =============================-->
  <!--============================= FOOTER =============================-->
<footer class="main-block dark-bg" style="height: 350px;">
  <div class="container">

    <div class="row">
      <div class="col-md-6">
        <h2 class="page-header" style="font-style: calibri; color: #fff ; float: left; ">
            Info Kontak</h2>
        <!-- /.col -->
      </div>
      <div class="col-md-6">
        <h2 class="page-header" style="font-style: calibri; color: #fff ; float: left; ">
            Tentang Kami</h2>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="col-md-12">
      <div class="row invoice-info">
        <div class="col-sm-6 invoice-col">
          <address style="padding-top: 20px;">
            <img src="<?php echo base_url('assets/images/phone_contact.png');?>" style="float: left; width: 40px; height: 40px;">
            <div style="color: #fff; padding-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;+62 89532 500 8487</div>
          <br>
             <img src="<?php echo base_url('assets/images/email_contact.png');?>" style="float: left; width: 40px; height: 40px;">
             <div style="color: #fff; padding-top: 8px;">&nbsp;&nbsp;&nbsp;&nbsp;ebeasiswa.indonesia@gmail.com</div>
          </address>
        </div>
        <div class="col-sm-6 invoice-col">
          <address>
            <div style="color:#fff"><strong>E-Beasiswa</strong> adalah sebuah website pencarian<br>
            beasiswa dalam dan luar negeri<br>
            yang membantu mahasiswa/pelajar<br>
            dalam menemukan beasiswa yang tepat<br>
            dan sesuai keinginan
          </div>
          </address>
        </div>
    </div>
      </div>
    </div>
  </div>
</footer>
<!--//END FOOTER -->

