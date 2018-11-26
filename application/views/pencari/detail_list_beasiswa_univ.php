<?php
$this->load->view('pencari/header_user');
// echo '<pre>';
// var_dump($hasil);
// echo '</pre>';
// exit;
?>


<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 200px;">

<?php foreach ($hasil as $value):?>
  <div class="container" style="padding-top: 30px; ">
        
   <h3 style="color:#fff; margin-top: 50px;"><?php echo $value['title'];?><br></h3>

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
      <?php echo $value['description'];?>
   </div>
 </div>
    </div>
  </div>
</div>
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


