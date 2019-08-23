<?php
$this->load->view('pencari/header_user');
// echo '<pre>';
// var_dump($hasil);
// echo '</pre>';
// exit;
?>


<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 20px; ">
    <div class="row">
    <div class="col-md-3">
    <img src="<?php echo base_url();?>assets/images/diploma.png" style="height: 200px; width: 200px;" class="img-fluid" alt="img13" /> 
    </div> 
    <div class="col-md-9">
    <h5 class="title-text" style="color:#fff; ">Area Beasiswa</h5>
      
        <h6 class="title-text" style="color:#fff; padding-bottom: 30px;">Temukan berbagai beasiswa sesuai pilihanmu.<br> Kamu dapat mencari beasiswa berdasarkan universitas dan tingkatan yang kamu ingin pilih.</h6>

        <br>
        <h3 style="color:#fff; ">Beasiswa di <?php echo $keyword_universitas;?><br></h3>
      </div>
    </div>


    </div>
  </div>
  </section>

  <section class="main-block light-bg" id="section">
    <div class="container" style="padding-bottom: 50px;">

     <!-- Post -->
  <div class="post">

        <div class="user-block">
          <div class="row">
          <div class="col-md-12 featured-responsive">
     <span class="username"><p><i class="fa fa-list">&ensp;Menampilkan <?php echo !empty($hasil['total']) ? $hasil['total'] : '0' ?> hasil</i></p></span></div></div>
    
     <?php foreach ($hasil as $value): ?>
      <form id="form" action="<?php echo base_url().'Pencarian_BeasiswaC/tampil_detail_beasiswa_univ'?>" method="POST">
      <?php if (!empty($value['judul'])): ?>
        

       
           <div class="row">
            <?php if(!empty($value['gambar'])){ ?>
           <div class="col-md-3">

              <img src="<?php echo $value['gambar']; ?>" alt="" style="width:250px; height:200px;">
        </div>
      <?php } ?>
        <div class="col-md-12 featured-responsive">
          <span class="username">
            <input type="hidden" name="link" value="<?php echo $value['link']; ?>">
            <div style="padding-bottom: 10px;"><?php echo $value['judul']; ?>
            </div>
            <input type="hidden" name="id" value="<?php echo $value['id'];?>">
            
          </span>
          <p>
         <?php echo $value['deskripsi']; ?>

        </p>

        <button class="btn btn-primary">Info Selengkapnya</button><hr>
        </div>
        <!-- /.user-block -->
        
      </div>
      
    
      <!-- /.post -->
       
      <?php endif ?>
    </form>
     <?php endforeach ?>

     </div>
</div>
     
  </div>

  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <?php if (!empty($hasil['prev'])): ?>
      <li class="page-item">
        <a class="page-link" href="<?php echo $hasil['prev']; ?>">Halaman Sebelumnya</a>
      </li>
      
    <?php endif ?>
    <?php if (!empty($hasil['next'])): ?>
      <li class="page-item">
        <a class="page-link" href="<?php echo $hasil['next'] ?>">Halaman Selanjutnya</a>
      </li>
      
    <?php endif ?>
  </ul>
</nav>
</section>
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


