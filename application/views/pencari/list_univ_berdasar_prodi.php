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
    <div class="row">
    <div class="col-md-3">
    <img src="<?php echo base_url();?>assets/images/university.png" style="height: 200px; width: 200px;" class="img-fluid" alt="img13" /> 
    </div> 
    <div class="col-md-9">
   <h5 class="title-text" style="color:#fff;">
    Area Universitas<br></h5>

    <?php
    $list_universitas = $this->db->query("SELECT count(distinct nama_universitas) as jumlah_universitas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$nama_fakultas'");


    foreach ($list_universitas->result() as $universitas){?>
      <h6 class="title-text" style="color:#fff;padding-bottom:60px">
       <?php echo $universitas->jumlah_universitas;?> institusi menawarkan <?php echo $nama_fakultas;?>
     <?php }?>
   </h6>

            <!-- <p>Join thousand of employers and earn what you deserve!</p>
              <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->
              <a class="btn" type="btn" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>" class="btn-form" style="background-color:#fff; color:black;"><i class="fa fa-mortar-board"> Cari Beasiswa</i></a>
            </div>
          </div>

            </div>


          </section>


          <section class="main-block light-bg">
            <div class="container">
              <div class="styled-heading">
        <h3>Daftar Universitas</h3>
      </div>

             <div class="row" >
              <?php foreach ($list_univ_by_fakultas as $value){?> 
                <div class="col-md-4 featured-responsive">

                  <form action="<?php echo base_url('PencarianC/detail_pencarian');?>" method="POST">


                    <div class="featured-place-wrap">
                      <img src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" class="img-fluid" alt="#" >

                      <!--  <span class="featured-rating-orange">6.5</span> -->
                      <div class="featured-title-box">
                        <div><h6><?php echo $value->nama_universitas; ?></h6></div>
                        <input type="hidden" name="nama_univ" value="<?php echo $value->nama_universitas; ?>">
                        <input type="hidden" name="id_universitas" value="<?php echo $value->id_universitas; ?>">
                        <p><span class="icon-location-pin"></span> <?php echo $value->negara; ?></p> 
                        <hr>


                        <ul>
                          <li>
                            <!-- <span class="icon-location-pin"></span> -->
                            <?php if ($this->session->userdata('logged_in')){

                              $id_pencari = $nama_pencari['id_pencari'];
                              $query = $this->db->query("SELECT tingkatan from pencari where id_pencari='$id_pencari'")->row_array(); 

                              if($query['tingkatan'] == "Pelajar"){?>

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Diploma'");
                                $cek =  $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Diploma'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek >0){?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Diploma</span><br>
                                <?php }?> 
                                <?php }?> 

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Sarjana'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Sarjana'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Sarjana</span><br>
                                <?php }?>
                                <?php }?>

                              <?php }else if($query['tingkatan'] == "Mahasiswa"){?>
                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Magister'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Magister'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){ ?>
                                  <span class="external-event label-warning" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Magister</span><br>
                                <?php }?>
                                <?php }?>

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Doktor'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Doktor'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){ ?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Doktor</span><br>
                                <?php }?>
                                <?php }?>
                              <?php }?>
                            <?php }else{?>
                              <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Diploma'");
                                $cek =  $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Diploma'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek >0){?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Diploma</span><br>
                                <?php }?> 
                                <?php }?> 

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Sarjana'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Sarjana'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Sarjana</span><br>
                                <?php }?>
                                <?php }?>

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Magister'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Magister'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){ ?>
                                  <span class="external-event label-warning" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Magister</span><br>
                                <?php }?>
                                <?php }?>

                                <?php 
                                $list_fakultas = $this->db->query("SELECT count(distinct prodi.id_prodi) as jumlah_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Doktor'");
                                $cek = $this->db->query("SELECT distinct prodi.id_prodi from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' AND prodi.tingkatan='Doktor'")->num_rows();
                                foreach ($list_fakultas->result() as $fakultas){?>
                                  <?php if($cek > 0){ ?>
                                  <span class="external-event label-success" style="position: relative; font-size: 14px; padding: 5px;">Memiliki  <?php echo $fakultas->jumlah_prodi;?> Program Doktor</span><br>
                                <?php }?>
                                <?php }?>

                            <?php }?>

                              </li>
                            




                            </ul>
                            <hr>

                            <input type="submit" value="Baca Selengkapnya..." class="btn btn-primary pull-left">
                            <!-- <a class="btn btn-danger btn-xs tooltips" name="tambahFavorit" style="width:50px;  display: inline-block; float:right;" data-popup="tooltip" title="Tambah ke favorit" data-placement="top" href="<?php echo site_url('PencarianC/getPencarian'); ?>"><i class="fa fa-heart white" style="color: white;" ></i></a> -->

                          </form>

                          <?php if ($this->session->userdata('logged_in')){?>

                            <?php 
                            $id_pencari=$this->session->userdata('id_pencari');
                            $query=$this->db->query("SELECT * from pencarian_favorit where id_universitas='$value->id_universitas' AND id_pencari='$id_pencari'")->num_rows();


                            if ($query < 1){?>

                             <form action="<?php echo base_url('PencarianC/tambah_favorit_from_fakultas');?>" method="POST">
                              <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                              <input type="hidden" value="<?php echo $nama_fakultas;?>" name="nama_fakultas">
                              <p><button class="btn btn-danger pull-right" style="color: white; margin-left: 10px;"><span data-toogle="tooltip" title="tambah favorit"><i class="fa fa-heart-o" style="color: #fff"></i></span></button></p>
                            </form>
                          <?php } else { ?>
                            <?php
                            $id_pencari=$this->session->userdata('id_pencari');
                            $id_univ=$this->db->query("SELECT id_pencarian_favorit from pencarian_favorit where id_universitas='$value->id_universitas' AND id_pencari='$id_pencari'");?>

                            <?php foreach ($id_univ->result() as $id){?>
                              <form action="<?php echo base_url('PencarianC/hapus_favorit_list_univ/'.$id->id_pencarian_favorit.'/'.$id_pencari);?>" method="POST">
                                <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                                <p><button class="btn btn-basic pull-right" style="color: #fff; margin-left: 10px;"><span data-toogle="tooltip" title="Sudah ada di dalam list favoritmu"><i class="fa fa-heart-o"></i></span></button></p>
                              </form>
                            <?php }?>

                          <?php } ?>

                        <?php } else{?>

                          <form action="<?php echo base_url('PencarianC/tambah_favorit_from_fakultas');?>" method="POST">
                            <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                            <p><button class="btn btn-basic pull-right" onclick="myFunction()" style="color: #fff; margin-left: 10px;" disabled=""><i class="fa fa-heart-o"></i></button></p>

                          </form>


                        <?php } ?>
                      </div>
                      <!--  </a> -->

         





                  </div>

                </div>

               <?php } ?>

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


<footer class="main-block dark-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="copyright">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          <p>Copyright &copy; 2018 E-Beasiswa</p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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

<script type="text/javascript" src="<?php echo base_url().'assets2/js/bootstrap.js'?>"></script>
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
  function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}

</script>
</body>
</html>
