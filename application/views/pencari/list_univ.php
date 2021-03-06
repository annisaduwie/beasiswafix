
<!DOCTYPE html>
<html lang="en">
<style>
.button-clicked {
  background: red;
}

.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}
</style>

<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets2/css/bootstrap.css'?>">

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
    <h5 class="title-text" style="color:#fff; ">
      Area Universitas <?php echo $this->session->userdata('session_id_univ') ?><br></h5>
     
        <?php 
        $list_universitas = $this->db->query("SELECT count(distinct nama_universitas) as jumlah_universitas from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas=prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_prodi='$keyword_prodi' AND tingkatan='$keyword_tingkatan' AND kategori_universitas='$keyword_kategori'");


        foreach ($list_universitas->result() as $universitas){?>
          <h6 class="title-text" style="color:#fff;padding-bottom:60px">
           <?php echo $universitas->jumlah_universitas;?> institusi menawarkan <br> 
           <?php
           if ( $keyword_tingkatan =='' AND $keyword_kategori== ''){ ?>
            Jurusan <?php echo $keyword_prodi;?>
          <?php } else{?>
           Jurusan <?php echo $keyword_prodi;?> <?php echo $keyword_tingkatan;?> di <?php echo $keyword_kategori;?> 
         <?php }?> 
       <?php }?> 

     </h6>

      <a class="btn-form" type="btn" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>" class="btn-form" style="background-color:#fff; color:black;"><i class="fa fa-mortar-board">Cari Beasiswa</i></a>

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
              <?php foreach ($univ as $value) { ?> 

                <div class="col-md-4 featured-responsive">
                 <div class="featured-place-wrap">

                  <form action="<?php echo base_url('PencarianC/detail_pencarian/'.$value->id_universitas);?>" method="POST">
                    <input type="hidden" value="<?php echo $keyword_tingkatan;?>" name="keyword_tingkatan">
                    <input type="hidden" value="<?php echo $keyword_prodi;?>" name="keyword_prodi">
                    <input type="hidden" value="<?php echo $keyword_kategori;?>" name="keyword_kategori">
                    <input type="hidden" value="<?php echo $keyword_kategori;?>" name="id_universitas">


                    <img src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" class="img-fluid" alt="#" >

                    <!--  <span class="featured-rating-orange">6.5</span> -->
                    <div class="featured-title-box">
                      <div><h6><?php echo $value->nama_universitas; ?></h6></div>
                      <input type="hidden" name="nama_univ" value="<?php echo $value->nama_universitas; ?>">
                      <input type="hidden" name="id_universitas" value="<?php echo $value->id_universitas; ?>">
                      <p><span class="icon-location-pin"></span> <?php echo $value->negara; ?></p> 
                      <hr>


                   
                      <br>
                      <input type="submit" value="Baca Selengkapnya..." class="btn btn-primary pull-left">
                      
                    </form>
                    
                    

                    <?php if ($this->session->userdata('logged_in')){?>

                    <?php 
                    $id_pencari=$this->session->userdata('id_pencari');
                    $query=$this->db->query("SELECT * from pencarian_favorit where id_universitas='$value->id_universitas' AND id_pencari='$id_pencari'")->num_rows();
                   

                    if ($query < 1){?>

                    <form action="<?php echo base_url('PencarianC/tambah_favorit');?>" method="POST">
                      <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                      <input type="hidden" name="keyword_prodi" value="<?php echo $keyword_prodi ?>">
                      <input type="hidden" name="keyword_kategori" value="<?php echo $keyword_kategori ?>">
                      <input type="hidden" name="keyword_tingkatan" value="<?php echo $keyword_tingkatan ?>">
                      <p><button name="like" class="btn btn-danger pull-right" style="color: #fff; margin-left: 10px;"><span data-toogle="tooltip" title="tambah favorit"><i class="fa fa-heart-o" style="color: #fff"></i></span></button></p>
                    </form>
                  <?php } else { ?>
                    <?php
                     $id_pencari=$this->session->userdata('id_pencari');
                     $id_univ=$this->db->query("SELECT id_pencarian_favorit from pencarian_favorit where id_universitas='$value->id_universitas' AND id_pencari='$id_pencari'");?>

                      <?php foreach ($id_univ->result() as $id){?>
                      <form action="<?php echo base_url('PencarianC/hapus_favorit_list_univ/'.$id->id_pencarian_favorit.'/'.$id_pencari);?>" method="POST">
                      <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                      <input type="hidden" name="keyword_prodi" value="<?php echo $keyword_prodi ?>">
                      <input type="hidden" name="keyword_kategori" value="<?php echo $keyword_kategori ?>">
                      <input type="hidden" name="keyword_tingkatan" value="<?php echo $keyword_tingkatan ?>">
                      <p><button name="dont_like" class="btn btn-basic pull-right" style="color: white; margin-left: 10px;"><span data-toogle="tooltip" title="Sudah ada di dalam list favoritmu"><i class="fa fa-heart-o"></i></span></button></p>
                    </form>
                  <?php }?>

                  <?php } ?>

                  <?php } else{?>

                    <form action="<?php echo base_url('PencarianC/tambah_favorit');?>" method="POST">
                      <input type="hidden" value="<?php echo $value->nama_universitas;?>" name="nama_univ">
                      <input type="hidden" name="keyword_prodi" value="<?php echo $keyword_prodi ?>">
                      <input type="hidden" name="keyword_kategori" value="<?php echo $keyword_kategori ?>">
                      <input type="hidden" name="keyword_tingkatan" value="<?php echo $keyword_tingkatan ?>">
                      <p><button class="btn btn-basic pull-right" onclick="myFunction()" style="color: #fff; margin-left: 10px;" disabled=""><i class="fa fa-heart-o"></i></button></p>

                    </form>

                  <?php } ?>

                  
                  </div>

                  <!--  </a> -->





                </div>





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
<script type="text/javascript">

function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
</script>

<!-- <script>
    $('.btn-counter').on('click', function(event, count) {
  event.preventDefault();
  
  var $this = $(this),
      count = $this.attr('data-count'),
      active = $this.hasClass('active'),
      multiple = $this.hasClass('multiple-count');
  
  // First method, allows to add custom function
  // Use when you want to do an ajax request
  /* if (multiple) {
  $this.attr('data-count', ++count);
  // Your code here
  } else {
  $this.attr('data-count', active ? --count : ++count).toggleClass('active');
  // Your code here
  } */
  
  // Second method, use when ... I dunno when but it looks cool and that's why it is here
  $.fn.noop = $.noop;
  $this.attr('data-count', ! active || multiple ? ++count : --count  )[multiple ? 'noop' : 'toggleClass']('active');
  
});
</script> -->


</body>
</html>
