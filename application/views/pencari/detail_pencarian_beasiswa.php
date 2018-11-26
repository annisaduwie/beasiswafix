<?php
$this->load->view('pencari/header_user');
?>

<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 20px; ">
    <h5 class="title-text" style="color:#fff; ">Area Beasiswa</h5>
      
        <h6 class="title-text" style="color:#fff; padding-bottom: 30px;">Temukan berbagai beasiswa sesuai pilihanmu.<br> Kamu dapat mencari beasiswa berdasarkan universitas dan tingkatan yang kamu ingin pilih.</h6><br>
        <h6 style="color:#fff; ">Berikut adalah daftar beasiswa yang terdapat untuk jenjang <u><?php echo $keyword_jenjang;?></u> <?php echo $keyword_kategori;?> <?php echo $keyword_negara;?><br>
        <br><h6>
        


      </h5>


    </div>
  </section>

  <section class="main-block light-bg" id="section">
    <div class="container" style="padding-bottom: 50px;">

     <!-- Post -->
     <?php foreach ($pencarian_beasiswa as $value){?> 
      <div class="post">
        <div class="user-block">
          <span class="username">
            <a href="#"><?php echo $value->nama_beasiswa; ?></a>

          </span>
          <span class="description"><?php echo $value->url; ?></span>
        </div>
        <!-- /.user-block -->
        <p>
          Lorem ipsum represents a long-held tradition for designers,
          typographers and the like. Some people hate it and argue for
          its demise, but others ignore the hate as they create awesome
          tools to help create filler text for everyone from bacon lovers
          to Charlie Sheen fans.
        </p>
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


