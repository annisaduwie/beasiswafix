
<!DOCTYPE html>
<html lang="en">
<style>
.button-clicked {
  background: red;
}
</style>
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets2/css/bootstrap.css'?>">

<?php
$this->load->view('pencari/header_user');
?>
<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 30px; ">
    <h5 class="title-text" style="color:#fff; padding-bottom: 70px">
      Area Universitas<br><br>


      <!--  <?php echo $keyword_prodi;?> -->

      <?php 
      $list_universitas = $this->db->query("SELECT count(distinct nama_universitas) as jumlah_universitas from universitas, univ_fak, fakultas, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND fakultas.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_prodi='$keyword_prodi' AND tingkatan='$keyword_tingkatan' AND kategori_universitas='$keyword_kategori'");


      foreach ($list_universitas->result() as $universitas){?>

       <?php echo $universitas->jumlah_universitas;?> institusi menawarkan <br> 
       <?php echo $keyword_tingkatan;?>
       program studi <?php echo $keyword_prodi;?>  di <?php echo $keyword_kategori;?> 

   <?php }?> 

</h5>

            <!-- <p>Join thousand of employers and earn what you deserve!</p>
                <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->
                <a class="btn-form" type="btn" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>" class="btn-form" style="background-color:#fff; color:black;">Cari Beasiswa</a>

            </div>


        </section>



        <section class="main-block light-bg">
            <div class="container">



               <div class="row" >
                <?php foreach ($univ as $value){?> 

                    <div class="col-md-4 featured-responsive">

                        <form action="<?php echo base_url('PencarianC/detail_pencarian');?>" method="POST">
                            <input type="hidden" value="<?php echo $keyword_tingkatan;?>" name="keyword_tingkatan">
                            <input type="hidden" value="<?php echo $keyword_prodi;?>" name="keyword_prodi">
                            <input type="hidden" value="<?php echo $keyword_kategori;?>" name="keyword_kategori">
                            <input type="hidden" value="<?php echo $keyword_kategori;?>" name="id_universitas">

                            <div class="featured-place-wrap">
                              <img src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" class="img-fluid" alt="#" >

                              <!--  <span class="featured-rating-orange">6.5</span> -->
                              <div class="featured-title-box">
                                <div><h6><?php echo $value->nama_universitas; ?></h6></div>
                                <input type="hidden" name="nama_univ" value="<?php echo $value->nama_universitas; ?>">
                                <input type="text" name="id_universitas" value="<?php echo $value->id_universitas; ?>">
                                <p><span class="icon-location-pin"></span> <?php echo $value->negara; ?></p> 
                                <hr>
                                

                                <ul>
                                    <li>
                                        <!-- <span class="icon-location-pin"></span> -->
                                        <?php 
                                        $list_fakultas = $this->db->query("SELECT count(distinct nama_fakultas) as jumlah_fakultas from universitas, univ_fak, fakultas, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND fakultas.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_universitas='$value->nama_universitas';");
                                        foreach ($list_fakultas->result() as $fakultas){?>
                                            <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_fakultas;?> fakultas</span>

                                        </li>

                                    <?php }?> 

                                    <li>
                                        <!-- <span class="icon-screen-smartphone"></span> -->
                                        <?php 

                                        $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from universitas, univ_fak, fakultas, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND univ_fak.id_univ_fak=fakultas.id_univ_fak AND fakultas.id_univ_fak=fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_universitas='$value->nama_universitas' AND tingkatan='$keyword_tingkatan'");
                                        foreach ($list_jumlah->result() as $prodi){?>
                                            <span class="external-event label-warning" style="position: relative; font-size: 14px; padding: 5px;">Tersedia <?php echo $prodi->jumlah_prodi;?> jenjang <?php echo $keyword_tingkatan;?></span>
                                        </li>    


                                    <?php }?> 
                                </ul>
                                <hr>


                                <div class="bottom-icons">

                                    <!-- <div class="closed-now">Selengkapnya...</div> -->


                                    <a onclick="document.getElementById('<?php echo $value->nama_universitas;?>').src='<?php echo base_url()?>assets/images/redheart.png'">
                                        <!-- echo base_url('PencarianC/tambah_favorit');-->
                                        <img id="<?php echo $value->nama_universitas;?>" src="<?php echo base_url()?>assets/images/whiteheart.png" style="margin-top: 5px; width:50px;  display: inline-block; float:right; height:30px; width:30px ; float:right;">
                                    </a>


                                    <input type="submit" value="Baca Selengkapnya..." class="btn btn-primary">
                                    <!-- <a class="btn btn-danger btn-xs tooltips" name="tambahFavorit" style="width:50px;  display: inline-block; float:right;" data-popup="tooltip" title="Tambah ke favorit" data-placement="top" href="<?php echo site_url('PencarianC/getPencarian'); ?>"><i class="fa fa-heart white" style="color: white;" ></i></a> -->


                                </div>
                            </div>
                            
                            <!--  </a> -->





                        </div>

                    </form>
                </div>

            <?php }?>


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
<script type="text/javascript" src="<?php echo base_url().'assets2/js/bootstrap.js'?>"></script>
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
