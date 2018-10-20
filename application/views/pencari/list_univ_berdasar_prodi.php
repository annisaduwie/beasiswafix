<!DOCTYPE html>
<html lang="en">
<style>
.button-clicked {
  background: red;
}
</style>

<?php
$this->load->view('pencari/header_user');
?>
    <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">
 
      <div class="container" style="padding-top: 30px; ">
<h5 class="title-text" style="color:#fff;padding-bottom: 100px">

   <!--  <?php echo $keyword_prodi;?> -->

           
             Berikut adalah daftar universitas yang menawarkan <br> 
             program studi tentang <?php echo $nama_fakultas;?>


            
            </h5>

            <!-- <p>Join thousand of employers and earn what you deserve!</p>
            <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->
           <a class="btn-form" type="btn" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>" class="btn-form" style="background-color:#fff; color:black;">Cari Beasiswa</a>
     
      </div>


    </section>


    
<section class="main-block light-bg">
        <div class="container">
            

             <div class="row" >
                <div class="col-md-4 featured-responsive">
                    

            <?php foreach ($list_univ_by_fakultas as $value){?> 
            
            <form action="<?php echo base_url('PencarianC/detail_pencarian');?>" method="POST">
             

                <div class="featured-place-wrap">
                      <img src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" class="img-fluid" alt="#" >
                            
                           <!--  <span class="featured-rating-orange">6.5</span> -->
                            <div class="featured-title-box">
                                <div><h6><?php echo $value->nama_universitas; ?></h6></div>
                                <input type="hidden" name="nama_univ" value="<?php echo $value->nama_universitas; ?>">
                                <p><span class="icon-location-pin"></span> <?php echo $value->negara; ?></p> 
                                <hr>
                                
                            
                                <ul>
                                    <li>
                                        <!-- <span class="icon-location-pin"></span> -->
                                        <?php 
                                        $list_fakultas = $this->db->query("SELECT count(distinct nama_fakultas) as jumlah_fakultas from universitas, univ_fak, fakultas, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND fakultas.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_universitas='$value->nama_universitas';");
                                    foreach ($list_fakultas->result() as $fakultas){?>
                                        <p>Memiliki  <?php echo $fakultas->jumlah_fakultas;?> fakultas</p>
                                    </li>

                                       <?php }?> 

                                    <li>
                                        <!-- <span class="icon-screen-smartphone"></span> -->
                                         <?php 
                                      
                                        $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from universitas, univ_fak, fakultas, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND fakultas.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_universitas='$value->nama_universitas';");
                                 foreach ($list_jumlah->result() as $prodi){?>
                                        <p>Menawarkan <?php echo $prodi->jumlah_prodi;?> program studi</p></li>
                                    <li>
                                       <!--  <span class="icon-link"></span> -->
                                        <p>https://burgerandlobster.com</p>
                                    </li>
                                    <?php }?> 
                                </ul>


               
                                <div class="bottom-icons">
                                    
                                    <!-- <div class="closed-now">Selengkapnya...</div> -->
                                  
                                   <!--  <a href="<?php echo base_url('PencarianC/tambah_favorit');?>" onclick="document.getElementById('myImage').src='<?php echo base_url()?>assets/images/redheart.png'">
                                    <img id="myImage" src="<?php echo base_url()?>assets/images/whiteheart.png" style="height:20px; width:20px ; float:right;">
                                </a> -->



                                 <input type="submit" value="Baca Selengkapnya..." class="btn btn-primary">
                                <a class="btn btn-danger btn-xs tooltips" name="tambahFavorit" style="width:50px;  display: inline-block; float:right;" data-popup="tooltip" title="Tambah ke favorit" data-placement="top" href="<?php echo site_url('PencarianC/getPencarian/'); ?>"><i class="fa fa-heart white" style="color: white;" ></i></a>
                                </div>
                            </div>
                            
                       <!--  </a> -->
                
                 

   
       
                </div>
            
        </form>
        <?php }?>
        </div>
          

         </div>


        
        

            
   

 <div class="row">
            <div class="col">
        <!-- <nav aria-label="Page navigation example"> -->
          <!-- <ul class="pagination justify-content-center"> -->
             <?php echo $pagination; ?>
<!--          </ul>
     </nav> -->
     </div>
     </div>
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

    <script>
        function submitForm(){
            document.getElementByID('sample_form').submit();
            return true;
        }
    </script>
</body>
</html>
