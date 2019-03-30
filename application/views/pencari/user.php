
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
                 <h1  style="color:#fff;">Temukan Jurusanmu </h1>
                 <h5> Website Pencarian Universitas dan Beasiswa Dalam dan Luar Negeri</h5>
               </div>
             </div>
           </div>
           <center> <div class="row d-flex justify-content-center">
            <div class="col-md-10" style="background-color:#d2d6de; padding-bottom: 8px;">

          
              <?php if ($this->session->userdata('logged_in')){

              $query = $this->db->query("SELECT tingkatan from pencari where id_pencari=".$nama_pencari)->row_array(); 

              if($query['tingkatan'] == "Pelajar"){?>

                <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">

                  <select name="keyword_kategori" class="btn-group2" id="keyword_kategori_pjr">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>
                  </select>
                  <select name="keyword_prodi" class="btn-group2" id="keyword_prodi_pjr">
                      <option value="0" disabled selected>Area Jurusan</option>
                  </select>
                  <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_pjr">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="Diploma">Diploma</option>
                     <option value="Sarjana">Sarjana</option>
                  </select>
                    <button type="submit" class="btn-form btn-primary" onclick="submit_form_pjr()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
                  </div>
                </form>

              <?php }else if($query['tingkatan'] == "Mahasiswa"){?>
                <form class="form-wrap mt-4" method="POST" id="keyword">
                  <div class="btn-group" role="group" aria-label="Basic example">

                    <select name="keyword_kategori" class="btn-group2" id="keyword_kategori_mhs">
                      <option value="0" disabled selected>Tujuan Negara</option>
                      <option value="Dalam Negeri">Dalam Negeri</option>
                      <option value="Luar Negeri">Luar Negeri</option>

                    </select>


                      <select name="keyword_prodi" class="btn-group2" id="keyword_prodi_mhs">
                      <option value="0" disabled selected>Area Jurusan</option> 
                      <!-- <?php foreach ($prodi_mahasiswa as $value) {?>
                      <option value="<?php echo $value->nama_prodi;?>"><?php echo $value->nama_prodi;?></option>
                      <?php  } ?> -->
              
                    </select>

                    <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_mhs">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="Magister">Magister</option>
                     <option value="Doktor">Doktor</option>
                   </select>

                    <button type="submit" class="btn-form btn-primary" onclick="submit_form_mhs()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
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

              <select name="keyword_prodi"  class="btn-group2" id="keyword_prodi_umum">
              <option value="0" disabled selected>Area Jurusan</option>
            </select>

            <select name="keyword_tingkatan" class="btn-group2" id="keyword_tingkatan_umum">
             <option value="0" disabled selected>Jenjang</option>
             <option value="Diploma">Diploma</option>
             <option value="Sarjana">Sarjana</option>
             <option value="Magister">Magister</option>
             <option value="Doktor">Doktor</option>
           </select> 

            <button type="submit" class="btn-form btn-primary" onclick="submit_form_umum()"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
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
          <h3>Daftar Fakultas</h3>
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
                    <a href="detail.html">

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
              <?php } ?>

              <?php }else{?>

                   <?php $no=0; foreach ($fakultas as $value): $no++; ?>
                   <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                      <a href="detail.html">

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


<div class="row justify-content-center">
      <div class="col-md-5">
        <div class="featured-btn-wrap">
           <a href="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>" class="btn btn-primary" style="height: 70px; width: 200px; padding-top: 25px;"><center>Lihat Semua</center></a>
        </div>
      </div>
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
            <p>Memudahkan pencarian Universitas sesuai dengan pilihanmu dalam dan luar negeri</p>
        </div> 
      </div>
      
      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">      
              <img src="assets/images/diploma.png" class="img-fluid" alt="img13" />
     
          </div>
        </div>
          <div class="add-listing-wrap">
            <p>Memudahkan pencarian Beasiswa sesuai dengan pilihanmu dalam dan luar negeri</p>
          </div>
      </div>

      

      <div class="col-md-4">
        <div class="find-place-img_wrap">
          <div class="grid">
              <img src="assets/images/information.png" class="img-fluid" />
        </div>
        </div>
        <div class="add-listing-wrap">
          <p>Menyediakan informasi mengenai Universitas dan Beasiswa dalam dan luar negeri</p>
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
        </div>
      </div>
    </div>
  </div>
</footer>
<!--//END FOOTER -->

<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->



<script type="text/javascript" src="<?php echo base_url().'assets/js/jquery-2.2.3.min.js'?>"></script>
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


     
    function submit_form_umum() {

    var jurusan = $('select[name="keyword_prodi"][id="keyword_prodi_umum"] option:selected').val();
    var kategori = $('select[name="keyword_kategori"][id="keyword_kategori_umum"] option:selected').val();
    var tingkatan = $('select[name="keyword_tingkatan"][id="keyword_tingkatan_umum"] option:selected').val();

    document.getElementById("keyword_kategori_umum").setCustomValidity('');
    document.getElementById("keyword_prodi_umum").setCustomValidity('');
    document.getElementById("keyword_tingkatan_umum").setCustomValidity('');

    if (kategori == 0 ){
      document.getElementById("keyword_kategori_umum").setCustomValidity('Silahkan pilih kategori terlebih dahulu');
      return false;
    }else if (jurusan == 0) {
      document.getElementById("keyword_prodi_umum").setCustomValidity('Silahkan pilih jurusan terlebih dahulu');
      return false;
    }else if (tingkatan == 0){
      document.getElementById("keyword_tingkatan_umum").setCustomValidity('Silahkan pilih jenjang terlebih dahulu');
      return false;
    }else{
       document.getElementById("keyword_kategori_umum").setCustomValidity('');
       document.getElementById("keyword_prodi_umum").setCustomValidity('');
       document.getElementById("keyword_tingkatan_umum").setCustomValidity('');
       document.getElementById("keyword").action ='<?php echo base_url('PencarianC/getPencarian')?>';
       return true;
    }
}

function submit_form_mhs(){

    document.getElementById("keyword_kategori_mhs").setCustomValidity('');
    document.getElementById("keyword_prodi_mhs").setCustomValidity('');
    document.getElementById("keyword_tingkatan_mhs").setCustomValidity('');

    var jurusan_mhs = $('select[name="keyword_prodi"][id="keyword_prodi_mhs"] option:selected').val();
    var kategori_mhs = $('select[name="keyword_kategori"][id="keyword_kategori_mhs"] option:selected').val();
    var tingkatan_mhs = $('select[name="keyword_tingkatan"][id="keyword_tingkatan_mhs"] option:selected').val();

    if (kategori_mhs == 0) {
      document.getElementById("keyword_kategori_mhs").setCustomValidity('Silahkan pilih kategori terlebih dahulu');
      return false;
    }else if (jurusan_mhs == 0) {
      document.getElementById("keyword_prodi_mhs").setCustomValidity('Silahkan pilih jurusan terlebih dahulu');
      return false;
    }else if (tingkatan_mhs == 0) {
      document.getElementById("keyword_tingkatan_mhs").setCustomValidity('Silahkan pilih jenjang terlebih dahulu');
      return false;
    }else if(kategori_mhs!=0 && jurusan_mhs != 0 && tingkatan_mhs != 0){
      document.getElementById("keyword_kategori_mhs").setCustomValidity('');
      document.getElementById("keyword_prodi_mhs").setCustomValidity('');
      document.getElementById("keyword_tingkatan_mhs").setCustomValidity('');
      document.getElementById("keyword").action ='<?php echo base_url('PencarianC/getPencarian')?>';    
      return true;  
       
    }
}

function submit_form_pjr(){

  var jurusan_pjr = $('select[name="keyword_prodi"][id="keyword_prodi_pjr"] option:selected').val();
  var kategori_pjr = $('select[name="keyword_kategori"][id="keyword_kategori_pjr"] option:selected').val();
  var tingkatan_pjr = $('select[name="keyword_tingkatan"][id="keyword_tingkatan_pjr"] option:selected').val();

      document.getElementById("keyword_kategori_pjr").setCustomValidity('');
      document.getElementById("keyword_prodi_pjr").setCustomValidity('');
      document.getElementById("keyword_tingkatan_pjr").setCustomValidity('');

  if (kategori_pjr == 0) {
      document.getElementById("keyword_kategori_pjr").setCustomValidity('Silahkan pilih kategori terlebih dahulu');
      return false;
    }else if (jurusan_pjr == 0) {
      document.getElementById("keyword_prodi_pjr").setCustomValidity('Silahkan pilih jurusan terlebih dahulu');
      return false;
    }else if (tingkatan_pjr == 0) {
      document.getElementById("keyword_tingkatan_pjr").setCustomValidity('Silahkan pilih jenjang terlebih dahulu');
      return false;
    }else {
      document.getElementById("keyword_kategori_pjr").setCustomValidity('');
      document.getElementById("keyword_prodi_pjr").setCustomValidity('');
      document.getElementById("keyword_tingkatan_pjr").setCustomValidity('');
      document.getElementById("keyword").action ='<?php echo base_url('PencarianC/getPencarian')?>';    
      return true; 
    }

}

</script>
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