<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  /* Set the size of the div element that contains the map */
  #map {
    height: 900px;  /* The height is 400 pixels */
    width: 100%;  /* The width is the width of the web page */
  }
</style>
<!-- Main Styles -->

</head>


<body>

<?php
$this->load->view('pencari/header_user');
?>


  <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; padding-top: 10px;">

    <div class="container">
      <div class="row">


        <?php foreach ($list_detail as  $list_detail){ ?>
          <div class="col-md-3">


            <img src="<?php echo base_url('universitas/'.$list_detail->gambar_universitas);?>" style="width:180px; height: 200px; padding-top: 20px; padding-bottom:10px; ">
          </div>
          <div class="col-md-9">
            <form class="form-wrap mt-4" action="<?php echo base_url('Pencarian_BeasiswaC/pencarian_beasiswa_by_univ');?>" method="POST">
             <h5 class="title-text" style="color:#fff; padding-top: 30px;"><b><?php echo $list_detail->nama_universitas?></b>
             </h5><input type="hidden" value="<?php echo $list_detail->nama_universitas;?>" name="nama_univ">
             <p style="color:#fff; font-size: 16px;" ><span class="icon-location-pin"></span> <?php echo $list_detail->negara;?></p>

             <button type="submit" class="btn-form" style="float: right; border-radius: 5px;background-color:#fff; color:black;"><center>Cari Beasiswa</center></button>
           </div>



         </div>
       </div>



            <!-- <p>Join thousand of employers and earn what you deserve!</p>
              <a href="my-account.html" class="btn btn-common">Get Started Now</a> -->


            </div>
          </section>


          <section class="reserve-block" style="padding-top:50px; background-color: #fff; padding-bottom: 50px;">
            <div class="container">
              <h6>Ringkasan</h6><br><hr>
              <div class="row">

                <br>
                <p style="font-size: 14px;"><?php echo $list_detail->deskripsi_universitas ;?></p>

              </div>
            </div>
          </section>
       

        <section class="reserve-block" style="padding-top:50px; padding-bottom: 50px; background-color: #f3f4f7">
          <div class="container">
            <h6>Jurusan yang Tersedia</h6><br><hr>
            <div class="row">
              <?php foreach ($fakultas as $key) {?>
                <div class="col-md-3">



                  <p><h6><?php echo $key->nama_fakultas;?></h6></p>
                  <ul>
                    <?php 
                    $list_prodi = $this->db->query("SELECT distinct nama_prodi from universitas, fakultas, univ_fak, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak = fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_universitas='$list_detail->nama_universitas ' AND nama_fakultas ='$key->nama_fakultas';");
                    foreach ($list_prodi->result() as $value){?>
                      <li class="prodi" ><p style="font-size: 14px;"><?php echo $value->nama_prodi;?></p>
                      </li>
                    <?php }?>
                  </ul>

                </div>     
              <?php }?>
            </div>
          </section>


          <section class="reserve-block" style="padding-top:50px; background-color: #fff; padding-bottom: 50px;">
            <div class="container">
             <h6>Biaya kuliah</h6><br><hr>
             <div class="row">

              <div class="info-text">


               <div class="info-text">
                <br>
                <p style="font-size: 14px;">Tasty Hand-Pulled Noodles is a 1950s style diner located in Madison, Wisconsin. Opened in 1946 by Mickey Weidman, and located just across the street from Camp Randall Stadium, it has become a popular game day tradition amongst
                many Badger fans. The diner is well known for its breakfast selections, especially the Scrambler, which is a large mound of potatoes, eggs, cheese, gravy, and a patrons’ choice of other toppings.</p>
              </div>     

            </div>
          </div>
        </div>
      </section>


   <!--  <section class="reserve-block" style="padding-top:50px; background-color: #fff; padding-bottom: 50px;">
      <div class="container">
        <h2>Beasiswa</h2><br><hr>
        <div class="row">
 
            <div class="info-text">
             
              
                 <div class="info-text">
                            <br>
                            <p>Tasty Hand-Pulled Noodles is a 1950s style diner located in Madison, Wisconsin. Opened in 1946 by Mickey Weidman, and located just across the street from Camp Randall Stadium, it has become a popular game day tradition amongst
                                many Badger fans. The diner is well known for its breakfast selections, especially the Scrambler, which is a large mound of potatoes, eggs, cheese, gravy, and a patrons’ choice of other toppings.</p>
                            <p>Mickies has also been featured on “Todd’s Taste of the Town” during one of ESPN’s college football broadcasts. We are one of the best Chinese restaurants in the New York, New York area. We have been recognized for our outstanding
                                Chinese & Asian cuisine, excellent Chinese menu, and great restaurant specials. We are one of the best Chinese restaurants in the New York, New York area. We have been recognized for our outstanding Chinese & Asian cuisine,
                                excellent Chinese menu, and great restaurant specials.</p>
                   </div>     
             
          </div>
        </div>
      </div>
    </section>
  -->

  <section class="reserve-block" style="padding-top:50px; padding-bottom: 50px;background-color: #f3f4f7">
    <div class="container">
     <h6>Lokasi</h6><br><hr><br>
     <div class="row">
      <div class="col-md-6">
        <!--The div element for the map -->

  <div id="map"></div>

        <?php

        $carimap = $this->db->query("select latitude, longitude from universitas, detail_universitas where universitas.id_universitas = detail_universitas.id_universitas AND nama_universitas ='$list_detail->nama_universitas'")->result_array();
        foreach ($carimap as $dcari){
          $lat1 = $dcari['latitude'];
          $lng1 = $dcari['longitude'];
        ?>
       

  <script type="text/javascript">

function initMap() {

    var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(<?php echo $dcari['latitude'] ?>, <?php echo $dcari['longitude']; ?>), 
          zoom: 16
        });

    var marker = new google.maps.Marker({
          map: map,
          position: new google.maps.LatLng(<?php echo $dcari['latitude']; ?>, <?php echo $dcari['longitude']; ?>)
        });
  }
</script>

 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7-fRsQfb2xc9Q3vQbyF8eIPQa0gCZGLA&callback=initMap"
        async defer>
      </script>

   <?php } ?>
  


    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
  -->

</div>

<div class="col-md-6">
  <div class="contact-info">
    <div class="address">
      <span class="icon-location-pin"></span>
      <p style="font-size: 14px;"> <?php echo $list_detail->alamat_universitas;?></p>
    </div>
    <div class="address">
      <span class="icon-screen-smartphone"></span>
      <p style="font-size: 14px;"> <?php echo $list_detail->no_telp;?></p>
    </div>
    <div class="address">
      <span class="icon-link"></span>
      <p style="font-size: 14px;">https://burgerandlobster.com</p>
    </div>
    <!--  <a href="#" class="btn btn-outline-danger btn-contact">SEND A MESSAGE</a> -->
  </div>
</div>
</div>
</div>
</section>

 <?php }?>



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
