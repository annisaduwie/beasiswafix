<?php
$this->load->view('pencari/header_user');
?>

<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

 

  <div class="container" style="padding-top: 20px; ">
     <div class="row">
    <div class="col-md-3">
    <img src="<?php echo base_url();?>assets/images/diploma.png" style="height: 200px; width: 200px;" class="img-fluid" alt="img13" /> 
    </div> 
    <div class="col-md-9">
    <h5 class="title-text" style="color:#fff; ">Area Beasiswa</h5>
      
        <h6 class="title-text" style="color:#fff; padding-bottom: 30px;">Temukan berbagai beasiswa sesuai pilihanmu.<br> Kamu dapat mencari beasiswa berdasarkan universitas dan tingkatan yang kamu ingin pilih.</h6><br>

    <div class="col-md-12" style="background-color:#d2d6de; padding: 10px;">

        <h5 style="color:black; ">Hasil Pencarian :

        <?php if($keyword_jenjang == '' AND $keyword_negara != ''){?> 

            Beasiswa di Negara <?php echo $keyword_negara;?>

        <?php }elseif($keyword_jenjang != '' AND $keyword_negara == ''){?>

            Beasiswa untuk Jenjang <?php echo $keyword_jenjang;?>

        <?php }elseif($keyword_jenjang != '' AND $keyword_negara != ''){?>

            Beasiswa <?php echo $keyword_jenjang;?> di Negara <?php echo $keyword_negara;?>
        <?php }else{?>

            Pencarian tidak ditemukan, silahkan lakukan pencarian kembali
          <?php }?>
      </h5>
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
     <span class="username"><p><i class="fa fa-list"> Menampilkan <?php echo !empty($hasil['total']) ? $hasil['total'] : '0' ?> hasil</i></p></span></div></div>
    
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
            <input type="text" name="id_konten" value="<?php echo $value['id_konten_beasiswa_umum'];?>">
            
            <div style="padding-bottom: 10px;"><?php echo $value['judul']; ?>

            </div>
            
            <div class="text-muted small pb-2"><i class="fa fa-calendar"></i> <i><?php echo tgl_indo(date("Y-m-d",strtotime($value['date']))); ?></i></div>
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


  </div>
  <?php if (count($hasil) != 1): ?>
    
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
  <?php endif ?>

 
</section>

    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 E-Beasiswa</p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <ul>
                            <li><a href="#"><span class="ti-facebook"></span></a></li>
                            <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
                            <li><a href="#"><span class="ti-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->


