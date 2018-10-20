<?php
$this->load->view('pencari/header_user');
?>

<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 20px; ">
    <h5 class="title-text" style="color:#fff; ">Area Beasiswa</h5>
      
        <h6 class="title-text" style="color:#fff; padding-bottom: 30px;">Temukan berbagai beasiswa sesuai pilihanmu.<br> Kamu dapat mencari beasiswa berdasarkan universitas dan tingkatan yang kamu ingin pilih.</h6><br>
        <h6 style="color:#fff; ">Berikut adalah daftar beasiswa yang terdapat di <u><?php echo $keyword_universitas;?></u><br><h6>

      </h5>

    </div>
  </section>

  <section class="main-block light-bg" id="section">
    <div class="container" style="padding-bottom: 50px;">

     <!-- Post -->
    
     <?php foreach ($pencarian_beasiswa_by_univ as $value){?> 
      <div class="post">

        <div class="user-block">
           <div class="row">
           <div class="col-md-3">
              <img src="<?php echo $value->image;?>" alt="" style="width:250px; height:200px;">
        </div>
        <div class="col-md-8 featured-responsive">
          <span class="username">
            <a href="#"><?php echo $value->judul; ?></a>

          </span>
          <span class="description"><i class="fa fa-clock-o"></i> <?php echo $value->tgl_upload; ?></span><br>

          <p>
          <?php echo $value->deskripsi; ?>
        </p>
        </div>
        <!-- /.user-block -->
        
      </div>
      
    </div>
</div>
      <!-- /.post -->
    <?php }?>
    








  </div>

  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
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


