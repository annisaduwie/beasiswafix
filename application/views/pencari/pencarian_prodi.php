<style>
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5px auto; /* 15% from the top and centered */
  padding: 5px;
  border: 1px solid #888;
  width: 60%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 18px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
</style>

<?php
$this->load->view('pencari/header_user');
?>
<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:5px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 400px;">

  <div class="container" style="padding-top: 20px; ">
    <h5 class="title-text" style="color:#fff; ">
      Area Fakultas<br><h5>
        <h6 class="title-text" style="color:#fff; padding-bottom: 30px;">Temukan program studi sesuai pilihanmu.<br> Kamu dapat menyaring berdasarkan universitas dan negara yang kamu ingin pilih.<br></h6>


      </h5>
      
        <div class="row" style="background-color: #d2d6de; padding-top: 15px;">
        <div class="col-md-12">
        <div class="form-group">
        <label><i class="fa fa-reorder" > Saring Bedasarkan</i></label><br><br>
  
            <label class="radio-inline">
                <input type="radio" id="univ" name="key" onclick="showUniversitas();"> <i class="fa fa-university">&ensp;Universitas</i></label>
                
                <label  class="radio-inline">        
                    <input type="radio" id="negara" name="key" onclick="showNegara();"> <i class="fa fa-flag">&ensp;Negara</i></label>      
            </div>
          </div>

           <form class="col-md-12" method="POST" id="dropdown_universitas" style="display: none;">
           <div class="form-group" >
          <select id="value_univ" class="form-control" name="filter_universitas" style="height: 50px;">
            <option disabled selected value="0">Pilih Universitas</option>
           <?php foreach ($universitas as $list_nama) {?>
                <option value="<?php echo $list_nama->id_universitas;?>"><?php echo $list_nama->nama_universitas;?></option>
              <?php  } ?>
          </select>
        </div>
          <div id="btnUniversitas" style="display: none;">
        <button type="submit" onclick="submit_form()" class="btn btn-danger " style="width:100%; height: 50px;" ><i class="fa fa-search"></i></button>
      </div>
      </form>

          <form class="col-md-12" method="POST" id="dropdown_negara" style="display: none;">
           <div class="form-group" >
          <select id="value_negara" class="form-control" name="filter_negara" style="height: 50px;">
            <option disabled selected value="0">Pilih Negara</option>
            <?php foreach ($negara as $list_nama) {?>
              <option value="<?php echo $list_nama->negara;?>"><?php echo $list_nama->negara;?></option>
            <?php  } ?>
          </select>
        </div>
          <div id="btnNegara" style="display: none;">
        <button type="submit" onclick="submit_form()" class="btn btn-danger " style="width:100%; height: 50px;" ><i class="fa fa-search"></i></button>
      </div>
      </form>
      </div>
      
       

    </div>
  

</div>


</section>

<section class="main-block light-bg" id="section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">

      </div>
    </div>

    <?php 

    if ( $this->input->post('filter_universitas') == '' && $this->input->post('filter_negara') == '' )
      { ?>
       <div class="styled-heading">
        <h3>Daftar Fakultas</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body" style="padding-bottom: 5px; ">

        <?php if ($this->session->userdata('logged_in')){

        $id_pencari = $nama_pencari['id_pencari'];
        $query = $this->db->query("SELECT tingkatan from pencari where id_pencari='$id_pencari'")->row_array(); 

          if($query['tingkatan'] == "Pelajar"){?>
            
            <?php foreach ($fakultas_pelajar as $key) {?>
              <form action="<?php echo base_url('PencarianC/pencarian_univ_berdasar_fakultas');?>" method="POST">
                <ul class="products-list product-list-in-box" style="padding:5px;">
                  <li class="item" style=" background-color: #252a33; height: 200px; padding: 50px; ">
                    <div class="product-info" >
                      <div href="javascript:void(0)" class="product-title" style="color:#fff;">
                        <?php echo $key->nama_fakultas;?>
                        <input type="hidden" value="<?php echo $key->nama_fakultas;?>" name="nama_fakultas">
                      </div>
                      <span class="product-description" ><br>
                       <p>Memiliki
                         <?php 
                         $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas' AND (prodi.tingkatan='Sarjana' OR prodi.tingkatan='Diploma')");
                         foreach ($list_jumlah->result() as $value){?>
                          <?php echo $value->jumlah_prodi;?> Program Studi
                          <?php }?></p>
                        </span>
                        <a class="btn btn-primary" data-toggle="modal" data-target="#myModal-<?php echo $key->id_fakultas;?>" style="color:#fff; margin-top: 5px;"><b>Lihat Program Studi</b></a>
                        <button type="submit" class="btn btn-danger" style="color:#fff; margin-top: 5px;"><b>Cari</b></button>
                      </center>



                      <!-- The Modal -->
                      <div id="myModal-<?php echo $key->id_fakultas;?>" class="modal">
                       <div class="modal-content">
                        <div class="modal-header" style="float:center;">
                          <h6><?php echo $key->nama_fakultas;?></h6>
                        </div>
                        <div class="modal-body">
                         <form action="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>" method="POST" >

                          <div class="form-group">
                            <?php 
                            $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas' AND (prodi.tingkatan='Sarjana' OR prodi.tingkatan='Diploma')");?>

                            <?php foreach ($list_prodi->result() as $value){?>
                              <ul>
                                <li><?php echo $value->nama_prodi;?></li>
                              </ul>
                            <?php }?>
                          </div>

                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Kembali</button>

                        </div>
                      </form> 
                      <!-- </form> -->
                    </div>
                  </div>
                </div></center>
              </li>



            </ul> 
          </form>
        <?php }?>

        <div class="row">
          <div class="col">
            <!-- <nav aria-label="Page navigation example"> -->
              <!-- <ul class="pagination justify-content-center"> -->
               <?php echo $pagination_pelajar; ?>
<!--          </ul>
</nav> -->
</div>
</div>

<?php }else if($query['tingkatan'] == "Mahasiswa"){?>
  <?php foreach ($fakultas_mahasiswa as $key) {?>
    <form action="<?php echo base_url('PencarianC/pencarian_univ_berdasar_fakultas');?>" method="POST">
      <ul class="products-list product-list-in-box" style="padding:5px;">
        <li class="item" style=" background-color: #252a33; height: 200px; padding: 50px; ">
          <div class="product-info" >
            <div href="javascript:void(0)" class="product-title" style="color:#fff;">
              <?php echo $key->nama_fakultas;?>
              <input type="hidden" value="<?php echo $key->nama_fakultas;?>" name="nama_fakultas">
            </div>
            <span class="product-description" ><br>
              <p>Memiliki
               <?php 
               $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor')");
               foreach ($list_jumlah->result() as $value){?>
                <?php echo $value->jumlah_prodi;?> Program Studi
                <?php }?></p>
              </span>
              <a class="btn btn-primary" data-toggle="modal" data-target="#myModal-<?php echo $key->id_fakultas;?>" style="color:#fff; margin-top: 5px;"><b>Lihat Program Studi</b></a>
              <button type="submit" class="btn btn-danger" style="color:#fff; margin-top: 5px;"><b>Cari</b></button>
            </center>
            <!-- The Modal -->
            <div id="myModal-<?php echo $key->id_fakultas;?>" class="modal">
             <div class="modal-content">
              <div class="modal-header" style="float:center;">
                <h6><?php echo $key->nama_fakultas;?></h6>
              </div>
              <div class="modal-body">
               <form action="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>" method="POST" >
                <div class="form-group">
                  <?php 
                  $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas' AND (prodi.tingkatan='Magister' OR prodi.tingkatan='Doktor')");?>
                  <?php foreach ($list_prodi->result() as $value){?>
                    <ul>
                      <li><?php echo $value->nama_prodi;?></li>
                    </ul>
                  <?php }?>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Kembali</button>
              </div>
            </form> 
            <!-- </form> -->
          </div>
        </div>
      </div></center>
    </li>

  </ul> 
</form>
<?php }?>
<div class="row">
  <div class="col">
    <!-- <nav aria-label="Page navigation example"> -->
      <!-- <ul class="pagination justify-content-center"> -->
       <?php echo $pagination_mahasiswa; ?>
<!--          </ul>
</nav> -->
</div>
</div>
<?php } ?>
<?php } else{?>
  <?php foreach ($fakultas as $key) {?>

    <form action="<?php echo base_url('PencarianC/pencarian_univ_berdasar_fakultas');?>" method="POST">

      <ul class="products-list product-list-in-box" style="padding:5px;">

        <li class="item" style=" background-color: #252a33; height: 200px; padding: 50px; ">


          <div class="product-info" >

            <div href="javascript:void(0)" class="product-title" style="color:#fff;">

              <?php echo $key->nama_fakultas;?>
              <input type="hidden" value="<?php echo $key->nama_fakultas;?>" name="nama_fakultas">

            </div>

            <span class="product-description" ><br>

              <p>Memiliki
               <?php 
               $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas'");

               foreach ($list_jumlah->result() as $value){?>


                <?php echo $value->jumlah_prodi;?> Program Studi

                <?php }?></p>

              </span>
              <a class="btn btn-primary" data-toggle="modal" data-target="#myModal-<?php echo $key->id_fakultas;?>" style="color:#fff; margin-top: 5px;"><b>Lihat Program Studi</b></a>
              <button type="submit" class="btn btn-danger" style="color:#fff; margin-top: 5px;"><b>Cari</b></button>
            </center>



            <!-- The Modal -->
            <div id="myModal-<?php echo $key->id_fakultas;?>" class="modal">

             <div class="modal-content">
              <div class="modal-header" style="float:center;">
                <h6><?php echo $key->nama_fakultas;?></h6>

              </div>
              <div class="modal-body">
               <form action="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>" method="POST" >

                <div class="form-group">
                  <?php 
                  $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, prodi_fak, prodi  where fakultas.id_fakultas = prodi_fak.id_fakultas AND prodi_fak.id_prodi = prodi.id_prodi AND nama_fakultas='$key->nama_fakultas'");?>

                  <?php foreach ($list_prodi->result() as $value){?>
                    <ul>
                      <li><?php echo $value->nama_prodi;?></li>
                    </ul>
                  <?php }?>
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Kembali</button>

              </div>
            </form> 
            <!-- </form> -->
          </div>
        </div>



      </div></center>
    </li>



  </ul> 
</form>
<?php }?>

<div class="row">
  <div class="col">
    <!-- <nav aria-label="Page navigation example"> -->
      <!-- <ul class="pagination justify-content-center"> -->
       <?php echo $pagination; ?>
<!--          </ul>
</nav> -->
</div>
</div>

<?php }?>
<?php }?>
</div>
</section>


<!--//END FEATURED PLACES -->
</div>
</div>
</div>

</div>
</li>
</ul>

</div>

</div>
</section>


<!--============================= FOOTER =============================-->
<footer class="main-block dark-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="copyright">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          <p>Copyright &copy; E-beasiswa</p>
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



<script type="text/javascript" src="<?php echo base_url();?>'assets/js/jquery-1.11.3.js'"></script>
<script type="text/javascript">

  function showUniversitas(){
  document.getElementById('dropdown_universitas').style.display ='block';
  document.getElementById('btnUniversitas').style.display ='block';
  document.getElementById('value_negara').value = 0; 
  document.getElementById('dropdown_negara').style.display ='none';
  document.getElementById('btnNegara').style.display ='none';
  }
  function showNegara(){
  document.getElementById('btnNegara').style.display ='block';
  document.getElementById('value_univ').value = 0;
  document.getElementById('dropdown_negara').style.display ='block';
  document.getElementById('dropdown_universitas').style.display ='none';
  document.getElementById('btnUniversitas').style.display ='none';
  }

   function submit_form() {

    var universitas = $('select[name="filter_universitas"] option:selected').val()
    var negara = $('select[name="filter_negara"] option:selected').val()

    if (universitas != 0) {
      document.getElementById("value_univ").setCustomValidity('');
      document.getElementById("dropdown_universitas").action ='<?php echo base_url('PencarianC/tampil_pencarian_prodi_by_universitas/')?>' + universitas ;
   
    }else if(negara != 0){
      document.getElementById("value_negara").setCustomValidity('');
       document.getElementById("dropdown_negara").action = '<?php echo base_url('PencarianC/tampil_pencarian_prodi_by_negara/')?>' + negara;
    }else{
       document.getElementById("value_univ").setCustomValidity('Silahkan pilih universitas terlebih dahulu');
        document.getElementById("value_negara").setCustomValidity('Silahkan pilih negara terlebih dahulu');
  }
}

  var x = document.getElementById("show_hide");
  var txt = document.getElementById("box");;
  var i;
  for (i = 0; i < x.length; i++) {
    txt = txt + "\n" + x.options[i].text;
  }
  
  $("#box").hide();
  $(".show_hide").show();

  $('.show_hide').click(function(){
    $("#box").slideToggle();
    $(".item").each(function(){

    });                                                      
  });

</script>
</body>
</html>


