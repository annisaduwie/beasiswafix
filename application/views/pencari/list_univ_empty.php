
<!DOCTYPE html>
<html lang="en">

<?php
$this->load->view('pencari/header_user');
?>
    <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">
 
      <div class="container" style="padding-top: 30px; ">
<h5 class="title-text" style="color:#fff;">

   <!--  <?php echo $keyword_prodi;?> -->

           
             Berikut adalah daftar universitas yang menawarkan <br> 
             <?php if ($this->session->userdata('logged_in')){ 
                echo $keyword['keyword_tingkatan'];
            }else{ echo $keyword_tingkatan; } ?> program studi 
            <?php if ($this->session->userdata('logged_in')){ 
                echo $keyword['keyword_prodi'];
            }else { echo $keyword_prodi; } ?> di 
            <?php if ($this->session->userdata('logged_in')){ 
                echo $keyword['keyword_kategori'];
            }else{ echo $keyword_kategori;} ?>

            </h5>

            <!-- <p>Join thousand of employers and earn what you deserve!</p>
            <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->
           <button type="submit" class="btn-form" style="margin-top: 95px; background-color:#fff; color:black;">Saring berdasarkan</button>
     
      </div>


    </section>


    
<section class="main-block light-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>Daftar hasil pencarian universitas</h3>
                    </div>
                </div>
            </div>
            
           
    <div class="add-listing-wrap">
          <h3>Pencarian tidak ditemukan</h3>
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
    </div>
    </section>
    <!--//END FEATURED PLACES -->


    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p>Copyright &copy; 2018 Listing. All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
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
