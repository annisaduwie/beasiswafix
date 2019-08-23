
<?php
$this->load->view('pencari/header_user');
?>
<body >

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
                 <h1  style="color:#fff;">Temukan Universitas Impianmu</h1>
                 <h5> Website Pencarian Universitas dan Beasiswa Dalam dan Luar Negeri</h5>
               </div>
             </div>
           </div>
           <center> <div class="row d-flex justify-content-center">
            <div class="col-md-10" style="background-color:#d2d6de; padding-bottom: 8px;">

          
              <?php if ($this->session->userdata('logged_in')){
                
              $id_pencari = $this->session->userdata('id_pencari');

              $query = $this->db->query("SELECT tingkatan from pencari where id_pencari= $id_pencari")->row_array(); 

              if($query['tingkatan'] == "Pelajar"){?>

                <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">

                  <select name="keyword_kategori" class="btn-group2" id="keyword_kategori_pjr">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>
                  </select>
                  <select name="keyword_prodi" class="btn-group2" style="width: 400px;" id="keyword_prodi_pjr">
                      <option value="0" disabled selected>Area Jurusan</option>
                  </select>
                  <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_pjr">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="Diploma">Diploma</option>
                     <option value="Sarjana">Sarjana</option>
                  </select>
                    <button type="submit" class="btn-form btn-primary" onclick="submit_form()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
                  </div>
                </form>

              <?php }else if($query['tingkatan'] == "Mahasiswa"){?>
                <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">

                    <select name="keyword_kategori" class="btn-group2"id="keyword_kategori_mhs">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>

                    </select>
     
                <select name="keyword_prodi" class="btn-group2" style="width: 400px; background-color:   #fff;" id="keyword_prodi_mhs">
                  
                   <option value="0" disabled selected>Area Jurusan</option> 
               
                </select>

                    <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_mhs">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="Magister">Magister</option>
                     <option value="Doktor">Doktor</option>
                   </select>

                    <button type="submit" class="btn-form btn-primary" onclick="submit_form()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
                  </div>
                </form>
                 <?php }else if($query['tingkatan'] == "Umum"){?>
                  <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">
                    <select name="keyword_kategori" class="btn-group2" id="keyword_kategori_umum">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>

                    </select>

              <select name="keyword_prodi"  class="btn-group2" style="width: 400px;" id="keyword_prodi_umum">
              <option value="0" disabled selected>Area Jurusan</option>
            </select>

            <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_umum">
             <option value="0" disabled selected>Jenjang</option>
             <option value="Diploma">Diploma</option>
             <option value="Sarjana">Sarjana</option>
             <option value="Magister">Magister</option>
             <option value="Doktor">Doktor</option>
           </select> 

            <button type="submit" class="btn-form btn-primary" onclick="submit_form()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
         </div>
       </form>
     <?php }?>
                 <?php }else{ ?>

                <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">
                    <select name="keyword_kategori" class="btn-group2" id="keyword_kategori_umum">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>

                    </select>

              <select name="keyword_prodi"  class="btn-group2" style="width: 400px;" id="keyword_prodi_umum">
              <option value="0" disabled selected>Area Jurusan</option>
            </select>

            <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_umum">
             <option value="0" disabled selected>Jenjang</option>
             <option value="Diploma">Diploma</option>
             <option value="Sarjana">Sarjana</option>
             <option value="Magister">Magister</option>
             <option value="Doktor">Doktor</option>
           </select> 

            <button type="submit" class="btn-form btn-primary" onclick="submit_form()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
         </div>
       </form>

         <?php }?>
          

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
          <h3>Daftar Jurusan</h3>
        </div>
      </div>
    </div>
    
    <div class="row">
              <?php if ($this->session->userdata('logged_in')){?>

                <?php if($query['tingkatan']=='Pelajar'){?>

                <?php $no=0; foreach ($fakultas_pelajar as $value): $no++; ?>
                <div class="col-md-4 featured-responsive">
                  <div class="featured-place-wrap">
                    

                      <span class="featured-rating-orange"><?php echo $no; ?></span>
                      <div class="featured-title-box"><br>
                        <h6><?php echo $value->nama_fakultas;?></h6><br><hr>

                        <ul>

                          <?php 
                          $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi  AND (prodi.tingkatan='Sarjana' OR prodi.tingkatan='Diploma') AND nama_fakultas='$value->nama_fakultas' limit 4;");
                          foreach ($list_prodi->result() as $value){?>
                            <li><p><?php echo $value->nama_prodi;?></p>
                            </li><hr>
                          <?php }?>

                        </ul>

                      </div>
          
                  </div>
                </div>
              <?php  endforeach; ?>
  
                <?php }else if($query['tingkatan']=='Mahasiswa'){?>

                <?php $no=0; foreach ($fakultas_mahasiswa as $value): $no++; ?>
                <div class="col-md-4 featured-responsive">
                  <div class="featured-place-wrap">
                    
                      <span class="featured-rating-orange"><?php echo $no; ?></span>
                      <div class="featured-title-box"><br>
                        <h6><?php echo $value->nama_fakultas;?></h6><br><hr>

                        <ul>
                  <?php 
                     $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi  AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor') AND nama_fakultas='$value->nama_fakultas' limit 4;");
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

              <?php } else if($query['tingkatan']=='Umum'){?>
                 <?php $no=0; foreach ($fakultas_umum as $value): $no++; ?>
                   <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                      

                        <span class="featured-rating-orange"><?php echo $no; ?></span>
                        <div class="featured-title-box"><br>
                          <h6><?php echo $value->nama_fakultas;?></h6><br><hr>

                          <ul>
                       <?php 
                        $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' limit 4;");
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
              <?php }?>
              <?php }else{?>

                   <?php $no=0; foreach ($fakultas as $value): $no++; ?>
                   <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                    
                        <span class="featured-rating-orange"><?php echo $no; ?></span>
                        <div class="featured-title-box"><br>
                          <h6><?php echo $value->nama_fakultas;?></h6><br><hr>

                          <ul>
                       <?php 
                        $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi=prodi.id_prodi AND nama_fakultas='$value->nama_fakultas' limit 4;");
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
   <?php }?>
      
</div>
</section>
<!--//END FEATURED PLACES -->


<section class="main-block">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-5">
        <div class="styled-heading">
          <h3>Keuntungan</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
              <img src="assets/images/university.png" class="img-fluid" alt="img13" />           
          </div>
        </div>
        <div class="add-listing-wrap">
            <p style="font-size: 18px;">Memudahkan pencarian Universitas sesuai dengan pilihanmu dalam dan luar negeri</p>
        </div> 
      </div>
      
      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">      
              <img src="assets/images/diploma.png" class="img-fluid" alt="img13" />
     
          </div>
        </div>
          <div class="add-listing-wrap">
            <p style="font-size: 18px;">Memudahkan pencarian Beasiswa sesuai dengan pilihanmu dalam dan luar negeri</p>
          </div>
      </div>

      

      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
              <img src="assets/images/information.png" class="img-fluid" />
        </div>
        </div>
        <div class="add-listing-wrap">
          <p style="font-size: 18px;">Menyediakan informasi mengenai Universitas dan Beasiswa dalam dan luar negeri</p>
        </div>
      </div>

    </div>
  </div>
</div>
</section>



<!--//END ADD LISTING -->
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

<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->



<script type="text/javascript" src="<?php echo base_url().'assets/js/jquery-2.2.3.min.js'?>"></script>
<script src="<?php echo base_url('AdminLTE/bower_components/select2/dist/js/select2.full.min.js')?>"></script>
<script type="text/javascript"> 


$(document).ready(function(){
$('#keyword_kategori_mhs').change(function(){
      var keyword_kategori=$(this).val();
      $.ajax({
        url : "<?php echo base_url();?>Awal/dropdown_mhs",
        method : "POST",
        data : {keyword_kategori: keyword_kategori},
        async : false,
            dataType : 'json',
        success: function(data){
          var html = '';
                var i;
                for(i=0; i<data.length; i++){


                    html += '<option>'+data[i].nama_prodi+'</option>';
                }
                $('#keyword_prodi_mhs').html(html);
        }
      });
    });
  });

   $(document).ready(function(){
    $('#keyword_kategori_pjr').change(function(){
      var keyword_kategori=$(this).val();
      $.ajax({
        url : "<?php echo base_url();?>Awal/dropdown_pjr",
        method : "POST",
        data : {keyword_kategori: keyword_kategori},
        async : false,
            dataType : 'json',
        success: function(data){
          var html = '';
                var i;
                for(i=0; i<data.length; i++){
                    html += '<option>'+data[i].nama_prodi+'</option>';
                }
                $('#keyword_prodi_pjr').html(html);
          
        }
      });
    });
  });


   $(document).ready(function(){
    $('#keyword_kategori_umum').change(function(){
      var keyword_kategori=$(this).val();
      $.ajax({
        url : "<?php echo base_url();?>Awal/dropdown_umum",
        method : "POST",
        data : {keyword_kategori: keyword_kategori},
        async : false,
            dataType : 'json',
        success: function(data){
          var html = '';
                var i;
                for(i=0; i<data.length; i++){
                    html += '<option>'+data[i].nama_prodi+'</option>';
                }
                $('#keyword_prodi_umum').html(html);
          
        }
      });
    });
  });


     
    function submit_form() {

   
    var jurusan = $('select[name="keyword_prodi"] option:selected').val();
    var kategori = $('select[name="keyword_kategori"] option:selected').val();
    var tingkatan = $('select[name="keyword_tingkatan"] option:selected').val();

    if (kategori == 0 ){
      alert('Silahkan pilih tujuan negara terlebih dahulu');
    }else if (jurusan == 0) {
      alert('Silahkan pilih jurusan terlebih dahulu');
    }else if (tingkatan == 0){
      alert('Silahkan pilih jenjang terlebih dahulu');
    }else{
       document.getElementById("keyword").action ='<?php echo base_url('PencarianC/getPencarian')?>';
       return true;
    }
  }


  $('.btn-group2').select2();



  $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.

            if ($(window).scrollTop() > 100) {

              $('.fixed').addClass('is-sticky');

            } else {

              $('.fixed').removeClass('is-sticky');

            };
          });



</script>
</script>
</body>