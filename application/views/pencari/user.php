 <?php
$this->load->view('pencari/header_user');
?>
<body>

  <!-- SLIDER -->
  <section class="slider d-flex align-items-center">
    <!-- <img src="images/slider.jpg" class="img-fluid" alt="#"> -->
    <div class="container">
      <div class="row d-flex justify-content-center">
        <div class="col-md-12">
          <div class="slider-title_box">
            <div class="row">
              <div class="col-md-12">
                <div class="slider-content_wrap">
                 <h1  style="color:#3c8dbc;;">Temukan Jurusanmu </h1>
                 <h5> Website Pencarian Universitas dan Beasiswa Dalam dan Luar Negeri</h5>
               </div>
             </div>
           </div>
           <center> <div class="row d-flex justify-content-center">
            <div class="col-md-10" style="background-color:#d2d6de; padding-bottom: 8px;">
              <form class="form-wrap mt-4" method="POST" action="<?php echo base_url('PencarianC/getPencarian')?>">
                <div class="btn-group" role="group" aria-label="Basic example">

              <select name="keyword_prodi"  class="btn-group2">
              <option value="0" disabled selected>Area Jurusan</option>

                    <?php foreach ($prodi as $value) {?>
                      <option value="<?php echo $value->nama_prodi;?>"><?php echo $value->nama_prodi;?></option>
                    <?php  } ?>
              
            </select>
           

            <select name="keyword_kategori" class="btn-group2">
              <option value="0" disabled selected>Tujuan Negara</option>
              <option value="Dalam Negeri">Dalam Negeri</option>
              <option value="Luar Negeri">Luar Negeri</option>
              
            </select>

            <select name="keyword_tingkatan" class="btn-group2">
             <option value="0" disabled selected>Jenjang</option>
             <option value="Diploma">Diploma</option>
             <option value="Sarjana">Sarjana</option>
             <option value="Magister">Magister</option>
             <option value="Doktor">Doktor</option>
           </select> 
           <button type="submit" class="btn-form btn-primary"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
         </div>
       </form>
       
     </div>
   </div>
 </div>
</div>
</div>
</div>
</section>

<!--// SLIDER -->
<!--//END HEADER -->
<!--============================= FIND PLACES =============================-->

<section class="main-block light-bg">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5">
        <div class="styled-heading">
          <h3>Daftar Fakultas</h3>
        </div>
      </div>
    </div>
    
    <div class="row">
      <?php $no=0; foreach ($fakultas as $value): $no++; ?>
      <div class="col-md-4 featured-responsive">
        <div class="featured-place-wrap">
          <a href="detail.html">
           
            <span class="featured-rating-orange"><?php echo $no; ?></span>
            <div class="featured-title-box"><br>
              <h6><?php echo $value->nama_fakultas;?></h6><br><hr>
              
              <ul>
                <?php 
            $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, univ_fak, fak_prodi, prodi  where fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_fakultas='$value->nama_fakultas' limit 4;");
            foreach ($list_prodi->result() as $value){?>
              <li><p><?php echo $value->nama_prodi;?></p>
              </li><hr>
            <?php }?>
              

              </ul>
              
            </div>
          </a>
        </div>
      </div>
      <?php  endforeach; ?>
  
      
</div>


<div class="row justify-content-center">
      <div class="col-md-5">
        <div class="featured-btn-wrap">
           <a href="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>" class="btn btn-primary" style="height: 70px; width: 200px; padding-top: 25px;"><center>Lihat Semua</center></a>
        </div>
      </div>
    </div>





</section>
<!--//END FEATURED PLACES -->
<!--============================= CATEGORIES =============================-->
<section class="main-block">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5">
        <div class="styled-heading">
          <h3>Di Negara manakah yang kamu ingin kuliah ?</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
            <figure class="effect-ruby">
              <img src="assets/images/find-place3.jpg" class="img-fluid" alt="img13" />
              <figcaption>
                <h5>AMERIKA</h5>
                <p>114 Listings</p>
              </figcaption>
            </figure>
          </div>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
            <figure class="effect-ruby">
              <img src="assets/images/find-place3.jpg" class="img-fluid" alt="img13" />
              <figcaption>
                <h5>AUSTRALIA</h5>
                <p>114 Listings</p>
              </figcaption>
            </figure>
          </div>
        </div>
      </div>
      

      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
            <figure class="effect-ruby">
              <img src="assets/images/find-place3.jpg" class="img-fluid" />
              <figcaption>
                <h5>EROPA</h5>
                <p>114 Listings</p>
              </figcaption>
            </figure>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
</section>



<!--//END ADD LISTING -->
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




<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->


<script>
  $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

              $('.fixed').addClass('is-sticky');

            } else {

              $('.fixed').removeClass('is-sticky');

            };
          });

  $(function () {
    //Initialize Select2 Elements
    $('#select2').select2()

   
  })
</script>
      </body>
