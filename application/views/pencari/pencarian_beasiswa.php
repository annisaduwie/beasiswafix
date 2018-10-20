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
                                    <h1  style="color:#3c8dbc;">Temukan Beasiswamu</h1>
                                    <h5> Website Pencarian Universitas dan Beasiswa Dalam dan Luar Negeri</h5>
                                </div>
                            </div>
                        </div>
                       <center> <div class="row d-flex justify-content-center">
                            <div class="col-md-12" style="background-color:#d2d6de; padding-bottom: 8px;">
                                 <form class="form-wrap mt-4" action="<?php echo base_url('Pencarian_BeasiswaC/simpan_pencarian');?>" method="POST">
        <div class="row" style="background-color: #d2d6de; padding-top: 15px;">

          <div class="col-md-9">
            <!-- select -->
            <div class="form-group">
              <!-- <label>Select</label> -->
              <select class="form-control"  name="keyword_universitas" style="height: 50px;" id="filterUniv">

               <option disabled selected value='0' >Pilih Universitas</option>
               <?php foreach ($beasiswa_univ as $list_nama) {?>
                <option value="<?php echo $list_nama->nama_universitas;?>"><?php echo $list_nama->nama_universitas;?></option>
            <?php  } ?>
            </select>
          </div>
        </div>
         <!-- <div class="col-md-4">
         <div class="form-group">
          <select class="form-control" name="keyword_tingkatan" style="height: 50px;">
            <option disabled selected value='0'>-- Pilih Tingkatan --</option>
            <?php foreach ($beasiswa_univ as $list_nama) {?>
              <option value="<?php echo $list_nama->tingkatan;?>"><?php echo $list_nama->tingkatan;?></option>
            <?php  } ?>
          </select>
        </div> -->
     <!--  </div> -->
      <div class="col-md-3">
        <button type="submit" style="width:100%; height: 50px; background-color: white"><span class="icon-magnifier search-icon" style="color: black;"></span><h7 style="color:black">CARI</h7></button>
      </div>
    </div>
  </form>
                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--// SLIDER -->





