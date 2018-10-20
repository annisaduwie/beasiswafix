<?php
$this->load->view('pencari/header_user');
?>
<section class="section purchase" data-stellar-background-ratio="0.5" style="padding-left:20px;padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; height: 300px;">

  <div class="container" style="padding-top: 30px; ">
    <h5 class="title-text" style="color:#fff; ">
      Area Program Studi<br><h5>
        <h6 class="title-text" style="color:#fff; padding-bottom: 60px;">Temukan program studi sesuai pilihanmu.<br> Kamu dapat menyaring berdasarkan universitas dan negara yang kamu ingin pilih.</h6>


      </h5>
      <form class="form-wrap mt-4" method="POST" id="form" action="<?php echo base_url('PencarianC/tampil_pencarian_prodi')?>">
      <div class="row" style="background-color: #d2d6de; padding-top: 15px;">

        <div class="col-md-4">
          <!-- select -->
          <div class="form-group">
            <!-- <label>Select</label> -->
            <select class="form-control"  name="filter_universitas" style="height: 50px;" id="filterUniv">

             <option disabled selected value='0' >-- Saring Berdasarkan Universitas --</option>
             <?php foreach ($universitas as $list_nama) {?>
              <option id ="univ" value="<?php echo $list_nama->nama_universitas;?>"><?php echo $list_nama->nama_universitas;?></option>
            <?php  } ?>
          </select>
        </div>
      </div>
      <div class="col-md-4">
       <div class="form-group">
        <!-- <label>Select</label> -->
        <select class="form-control" name="filter_negara" style="height: 50px;">
          <option disabled selected value='0'>-- Saring Berdasarkan Negara --</option>
          <?php foreach ($negara as $list_nama) {?>
            <option value="<?php echo $list_nama->negara;?>"><?php echo $list_nama->negara;?></option>
          <?php  } ?>
        </select>
      </div>
    </div>
<div class="col-md-4">
    <button type="submit" style="width:100%; height: 50px; background-color: white"><span class="icon-magnifier search-icon" style="color: black;"></span><h7 style="color:black">CARI</h7></button>
  </div>
  </div>
</form>

</div>


</section>