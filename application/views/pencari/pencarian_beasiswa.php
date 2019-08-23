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
                 <h1  style="color:#fff;">Temukan Beasiswamu</h1>
                 <h5> Website Pencarian Universitas dan Beasiswa Dalam dan Luar Negeri</h5>
               </div>
             </div>
           </div>
           <center> <div class="row d-flex justify-content-center">
            <div class="col-md-10" style="background-color:#d2d6de; padding-bottom: 8px;">
              <form class="form-wrap mt-4" method="POST" action="<?php echo base_url('Pencarian_BeasiswaC/pencarian_beasiswa')?>">
                <div class="btn-group" role="group" aria-label="Basic example">

                

              <?php if ($this->session->userdata('logged_in')){

              $query = $this->db->query("SELECT tingkatan from pencari where id_pencari=".$nama_pencari['id_pencari'])->row_array(); 

                if($query['tingkatan'] == "Pelajar"){?>
             <select name="keyword_jenjang" class="btn-group2" id="keyword_jenjang_pelajar">
             <option value="0" disabled selected>Jenjang</option>
             <option value="D3">Diploma</option>
             <option value="S1">Sarjana</option>
             
           </select> 


                 <?php }else if($query['tingkatan'] == "Mahasiswa"){?>
                    
                    <select name="keyword_jenjang" class="btn-group2" id="keyword_jenjang_mahasiswa">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="S2">Magister</option>
                     <option value="S3">Doktor</option>
                   </select>
                 <?php }else if($query['tingkatan'] == "Umum"){?>
                    
                    <select name="keyword_jenjang" class="btn-group2" id="keyword_jenjang_mahasiswa">
                     <option value="0" disabled selected>Jenjang</option>
                     <option value="D3">Diploma</option>
                     <option value="S1">Sarjana</option>
                     <option value="S2">Magister</option>
                     <option value="S3">Doktor</option>
                   </select>
                 <?php }?>
                  <select name="keyword_negara" class="btn-group2" id="keyword_negara">
                     <option value="0" disabled selected>Negara</option>
                      <?php foreach ($list_beasiswa as $list) {?>
                     <option value="<?php echo str_replace(" ", "-", $list->negara);?>"><?php echo $list->negara;?></option>
                    <?php  } ?>
                   </select>

         <?php }?>
           <button type="button" name="cari" onclick="submit_form()" class="btn-form btn-primary" style="width: 276.11px;"><span class="icon-magnifier search-icon"></span>CARI<i class="pe-7s-angle-right"></i></button>
     
       </div>
     </form>
       
     </div>
   </div>
 </div>
</div>
</div>
</div>
</section>

<!--============================= FOOTER =============================-->

<!--//END FOOTER -->

<script src="<?php echo base_url('AdminLTE/bower_components/select2/dist/js/select2.full.min.js')?>"></script>

<script type="text/javascript">
  $('#keyword_jenjang_pelajar').select2();
  $('#keyword_jenjang_mahasiswa').select2();
  $('#keyword_negara').select2();

  function submit_form () {
    var jenjang = $('select[name="keyword_jenjang"] option:selected').val()
    var negara = $('select[name="keyword_negara"] option:selected').val()
    var page = 1

    if (jenjang != 0 && negara != 0) {
      window.location = '<?php echo base_url('Pencarian_BeasiswaC/pencarian_beasiswa/') ?>' + jenjang + '/' + negara + '/' + page;
     
    } else if (jenjang != 0 && negara == 0){
       alert('Silahkan pilih Negara terlebih dahulu!')
    }else if (jenjang == 0 && negara != 0){
       alert('Silahkan pilih Jenjang terlebih dahulu!')
    }
    else {
      alert('Silahkan pilih Jenjang dan Negara terlebih dahulu!')
    }

  }
</script>

<!--// SLIDER -->
<!--//END HEADER -->



