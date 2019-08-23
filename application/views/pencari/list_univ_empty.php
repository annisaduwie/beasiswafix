
<!DOCTYPE html>
<html lang="en">

<?php
$this->load->view('pencari/header_user');
?>
<style>
.img{
  display: block;
  margin-left: auto;
  margin-right: auto;
  height: 120px;
  width: 120px;
  margin-bottom: 20px;
}
</style>
    <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">
 
      <div class="container" style="padding-top: 30px; ">
      <h5 class="title-text" style="color:#fff; ">Maaf</h5>
      <h6 class="title-text" style="color:#fff;">
    

   <!--  <?php echo $keyword_prodi;?> -->

           
            Kami tidak bisa menemukan pencarian kamu untuk <br> 
            "<?php echo $keyword_tingkatan;  ?> program studi 
            <?php echo $keyword_prodi;  ?> di 
            <?php echo $keyword_kategori; ?>
            "
            </h6><br>
            <h6 class="title-text" style="color:#fff;">
                Mohon lakukan pencarian yang berbeda,<br>silahkan <a href="<?php echo base_url('Awal')?>" style="color:#fff;text-decoration: underline;">kembali ke pencarian</a>  untuk melakukan pencarian ulang
            </h6>


            <!-- <p>Join thousand of employers and earn what you deserve!</p>
            <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->
         <!--   <button type="submit" class="btn-form" style="margin-top: 95px; background-color:#fff; color:black;">Saring berdasarkan</button> -->


     
      </div>


    </section>


    
<section class="main-block light-bg">
        <div class="container">   
           
    <div class="add-listing-wrap">
        <img src="<?php echo base_url('assets/images/searching.png');?>" class="img"><br>
          <h6>Pencarian tidak ditemukan</h6>
        </div>
    </div>
    </section>
    <!--//END FEATURED PLACES -->


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
    <!--//END FOOTER -->




    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- Magnific popup JS -->
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="assets/js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>
</body>
</html>
