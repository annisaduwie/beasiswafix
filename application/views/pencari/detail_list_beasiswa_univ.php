<?php
$this->load->view('pencari/header_user');
// echo '<pre>';
// var_dump($hasil);
// echo '</pre>';
// exit;
?>


<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 20px; ">
  

       <
        
     

    </div>
  </section>

  <section class="main-block light-bg" id="section">
    <div class="container" style="padding-bottom: 50px;">

     <!-- Post -->
  <div class="post">

        <div class="user-block">
          <div class="row">
          <div class="col-md-12 featured-responsive">
     <span class="username"><p>Menampilkan 1500 hasil</p></span></div></div>
    
     <?php foreach ($hasil as $value): ?>
      <?php if (!empty($value['judul'])): ?>
        

       
           <div class="row">
            <?php if(!empty($value['gambar'])){ ?>
           <div class="col-md-3">

              <img src="<?php echo $value['gambar']; ?>" alt="" style="width:250px; height:200px;">
        </div>
      <?php } ?>
        <div class="col-md-12 featured-responsive">
          <span class="username">
            <div style="padding-bottom: 10px;"><a href="<?php echo $value['link']; ?>"><?php echo $value['judul']; ?></a></div>

          </span>
          <p>
         <?php echo $value['deskripsi']; ?>

        </p>
        </div>
        <!-- /.user-block -->
        
      </div>
      
    
      <!-- /.post -->
       
      <?php endif ?>
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


