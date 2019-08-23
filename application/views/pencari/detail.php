<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  /* Set the size of the div element that contains the map */
  #map {
    height: 900px;  /* The height is 400 pixels */
    width: 100%;  /* The width is the width of the web page */
  }
  .checked {
  color: orange;
}
</style>
<!-- Main Styles -->


<body>

<?php
$this->load->view('pencari/header_user');
?>


  <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; padding-top: 10px;">

    <div class="container">
      <div class="row">


        <?php foreach ($list_detail as  $list_detail){ ?>
          <?php $id_universitas = $list_detail->id_universitas?>
          <div>
            <img src="<?php echo base_url('universitas/'.$list_detail->gambar_universitas);?>" style="width:180px; height: 200px; padding-top: 20px; padding-bottom:10px; ">
          </div>
          <div class="col-md-10">

            <form class="form-wrap mt-4" action="<?php echo base_url('Pencarian_BeasiswaC/tampil_beasiswa_univ');?>" method="POST">
              <input type="hidden" value="<?php echo $list_detail->id_universitas?>" name="keyword_universitas">
             <h5 class="title-text" style="color:#fff; padding-top: 30px;"><b><?php echo $list_detail->nama_universitas?></b>
             </h5><input type="hidden" value="<?php echo $list_detail->nama_universitas;?>" name="nama_univ">
             <p style="color:#fff; font-size: 16px;" ><span class="icon-location-pin"></span> <?php echo $list_detail->negara;?></p><hr>


             <button class="btn-form" type="btn" class="btn-form" style="float: right; margin-bottom: 15px; border-radius: 5px;background-color:#fff; color:black;"><center><i class="fa fa-mortar-board"> Informasi Beasiswa</i></center></button>
           </form>
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
            <h6>Fakultas yang Tersedia</h6><br><hr>
            <div class="row">
              <?php foreach ($fakultas as $key) {?>
                <div class="col-md-12">



                  
                  <ul>
                    <div class="box box-default collapsed-box">
            <div class="box-header with-border">
              <h3 class="box-title"><?php echo $key->nama_fakultas;?></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <?php 
                    $list_prodi = $this->db->query("SELECT distinct nama_prodi, tingkatan from universitas, fak_univ, fakultas, prodi_fak, prodi  where universitas.id_universitas=fak_univ.id_universitas AND fak_univ.id_fakultas=fakultas.id_fakultas AND fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_universitas='$list_detail->nama_universitas ' AND nama_fakultas ='$key->nama_fakultas';");
                    foreach ($list_prodi->result() as $value){?>

                      
                      <li class="prodi" style="margin-left: 10px;"><p style="font-size: 14px;"><?php echo $value->nama_prodi;?>
                      <?php if($value->tingkatan=="Sarjana"){?>
                      ( S1 )
                    <?php } else if($value->tingkatan=="Diploma"){?>
                      ( D3 )
                    <?php } else if($value->tingkatan=="Magister"){?>
                    ( S2 )
                   <?php } else if($value->tingkatan=="Doktor"){?>
                    ( S3 )
                  <?php } ?>
                      </p>
                      </li>
                  
                     <?php }?>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
                    
                  </ul>

                </div>     
              <?php }?>
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

  <section class="reserve-block" style="padding-top:50px; padding-bottom: 50px;background-color: #fff;">
    <div class="container">
     <h6>Lokasi dan Kontak</h6><br><hr><br>
     <div class="row">
   
<div class="col-md-12">
  <div class="contact-info">
    <div class="address">
      <span class="icon-location-pin"></span>
      <p style="font-size: 14px;"><?php echo $list_detail->alamat_universitas;?></p>
    </div>
    <div class="address">
      <span class="icon-screen-smartphone"></span>
      <p style="font-size: 14px;"><?php echo $list_detail->no_telp;?></p>
    </div>
    <div class="address">
      <i class="fa fa-envelope-o"></i>
      <p style="font-size: 14px;"><?php echo $list_detail->email;?></p>
    </div>
    <div class="address">
      <span class="icon-link"></span>
      <p style="font-size: 14px;"><?php echo $list_detail->url_universitas;?></p>
    </div>
    <!--  <a href="#" class="btn btn-outline-danger btn-contact">SEND A MESSAGE</a> -->
  </div>
</div>
</div>
</div>
</section>

        <section class="reserve-block" style="padding-top:50px; padding-bottom: 50px; background-color: #f3f4f7">
          <div class="container">
            <h6>Ulasan Tentang Universitas</h6><br><hr>
            <div class="row">
              
                <div class="col-md-12">

            <?php
            $query=$this->db->query("SELECT * from ulasan, universitas WHERE ulasan.id_universitas AND universitas.id_universitas AND ulasan.id_universitas ='$id_universitas' AND status_publikasi='Sudah Disetujui';")->num_rows();

            if($query < 1 ){?>
            <center>
            <p style="font-size: 18px; padding-bottom: 20px;"><b>Universitas ini belum memiliki ulasan</b></p>
            </center>
          <?php }else{ ?>

          <?php
          foreach($data_ulasan as $ulasan){?>

            <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="<?php echo base_url('fileUpload/'.$ulasan->profil_pic);?>" style="margin-right: 20px;" alt="User Image">
                <span class="description"><?php echo $ulasan->nama;?></span>
                <span class="username" style="color: #B0C4DE;"><?php echo $ulasan->judul_ulasan;?></span>
              </div>
              <!-- /.user-block -->
             
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- post text -->
              <div class="row" style="padding-left: 10px;">
             
              <p style="font-size:  15px;">
                <?php 
            if($ulasan->rating==0){?>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php 
            }elseif($ulasan->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($ulasan->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($ulasan->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($ulasan->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }else{?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></p>
                
                &nbsp;<p style="font-size: 15px;"><?php echo $ulasan->post_ulasan;?></p>
            </div>
              <p style="font-size:  16px;"><?php echo $ulasan->deskripsi_ulasan;?></p>

                </div>
              </div>

                <?php } ?>

         <?php }
          ?>
          
              <?php 
             
              if ($this->session->userdata('logged_in') && $this->session->userdata('status') == "aktif"){ ?>

                <form method="POST" action="<?php echo base_url('Pencari/get_ulasan');?>">
         
                  <input type="hidden" name="id_univ" value="<?php echo $list_detail->id_universitas?>">
                  <input type="hidden" name="nama_univ" value="<?php echo $list_detail->nama_universitas?>">
                  <input type="hidden" name="key_prodi" value="<?php echo $keyword_prodi?>">
                  <input type="hidden" name="key_kategori" value="<?php echo $keyword_kategori?>">
                  <input type="hidden" name="key_tingkatan" value="<?php echo $keyword_tingkatan?>">
             
                <center>
                <button type="submit" class="btn-form" style="background-color: #B0C4DE; margin-bottom: 15px; border-radius: 5px; color:black;">Tulis Ulasan</button></center>
              </form>
             <?php } ?>



            </div>
                </div>     
           
            </div>
          </section>


 <?php }?>



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
<!-- jQuery 3 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/demo.js"></script>

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
