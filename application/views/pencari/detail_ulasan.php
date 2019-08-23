<?php
$this->load->view('pencari/profilpencari');
?>

<style>
.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: '★ ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}
  .checked {
  color: orange;
}

.test[style] {
     padding-right:0 !important;
 }



</style>
<body>
 <div class="col-md-9">
 				<?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                if($error)
                {
                  ?>
                  <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fa fa-exclamation-triangle">&ensp;
                    <?php echo $this->session->flashdata('error'); ?>
                    </i>                 
                  </div>
                <?php } ?>
                <?php  
                $success = $this->session->flashdata('success');
                if($success)
                {
                  ?>
                  <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fa fa-check">&ensp;
                    <?php echo $this->session->flashdata('success'); ?>
                  </i>
                  </div>
                <?php } ?>

          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Detail Ulasan</h3>
            </div>

                <div class="callout callout-info">
      				<p>Anda dapat melakukan edit dan hapus pada ulasan yang telah disetujui oleh Admin.</p>
    				</div>



              <?php 
            foreach ($data_ulasan as $value){?>

              <!-- /.tab-pane -->
              <div class="tab-pane" id="timeline" style="padding:10px;">
                <!-- The timeline -->
                <ul class="timeline timeline-inverse">
                  <!-- timeline time label -->
                
                     
             <li>

                    <div class="timeline-item">
                      <span class="time"><i class="fa fa-calendar-o" > <?php echo tgl_indo(date("Y-m-d",strtotime($value->post_ulasan))); ?></i> / <i class="fa fa-clock-o"></i> <?php echo date("H:i",strtotime($value->post_ulasan)); ?></span>

                      <h3 class="timeline-header"><?php echo $value->nama_universitas;?></h3>
                      <div style="padding-left: 10px;">
                      <i class="fa fa-map-marker" style="padding-top: 10px;"> <?php echo $value->negara;?></i>
                  </div>
                 <div style="padding-left: 10px; padding-top: 10px;">

            <?php if($value->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($value->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==1){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
        	<?php }elseif($value->rating==0){?>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></div>
            <div style="padding-left: 10px;">
            	<?php echo $value->judul_ulasan?>
            </div>

                      <div class="timeline-body">
                        <?php echo $value->deskripsi_ulasan?>
                      </div>
                      <div class="timeline-footer">
                      	<?php if($value->status_publikasi == 'Sudah disetujui'){?>
                      	<a  class="btn btn-primary" style="color:#fff" data-toggle="modal" data-target="#modal-tambah"><i class="fa fa-pencil" ></i></a>
                        <a class="btn btn-danger btn-xs" style="color:#fff" data-popup="tooltip" title="Hapus " data-placement="top" href="<?php echo site_url('Pencari/hapus_ulasan/'.$value->id_ulasan); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus ulasan ?')"><i class="fa fa-trash-o" ></i></a>
                      <?php } elseif($value->status_publikasi == 'Tidak disetujui'){?>

                      	<a  class="btn btn-primary" style="color:#fff" data-toggle="modal" data-target="#modal-tambah"><i class="fa fa-pencil" ></i></a>
                        <a class="btn btn-danger btn-xs" style="color:#fff" data-popup="tooltip" title="Hapus " data-placement="top" data-toggle="modal" data-target="#modal-hapus"><i class="fa fa-trash-o" ></i></a>

                      <?php }else{?> 

                      	<a  class="btn btn-primary disabled" style="color:#fff"><i class="fa fa-pencil" ></i></a>
                        <a class="btn btn-danger btn-xs disabled" style="color:#fff"><i class="fa fa-trash-o" ></i></a>

                      <?php } ?>
                       
                      </div>
                    </div>
                  </li>

                <div class="modal fade" id="modal-hapus">
                        <div class="modal-dialog">
                          <div class="modal-content" style="width:600px;">
                              
                            <div class="modal-body">
                            <center><img style="width: 70px;height: 70px; margin-bottom: 20px;" src="<?php echo base_url('assets/images/cancel.png');""?>"></center>
                              <form method="POST" action="<?php echo base_url('Pencari/hapus_ulasan/'.$value->id_ulasan);?>">
                                <input type='hidden' name="id_ulasan" value="<?php echo $value->id_ulasan;?>">
                                 <center><p style="font-style: calibri; font-size: 18px; color: #f56954; padding-bottom: 30px;"><b>Apakah anda yakin ingin menghapus ulasan ini ?</b></p>
                              
                                  <input type="submit" value="Ya" class="btn" style="width:80px; background-color:#d2d6de;">
                                  <input type="button" class="btn" data-dismiss="modal" value="Tidak" style="width:80px; background-color:#d2d6de;">
                              </form>
                            </div>
                        </div>
                      </div>
                    </div>

  <div class="modal fade" id="modal-tambah">
  <div class="modal-dialog">
    <div class="modal-content" style="height:1000px;width:650px;">
      <div class="modal-header">
        
      </div>
      <div class="modal-body">
      	<center>
      	<span class="description" style="font-size: 18px;">Tuliskan Ulasan Anda untuk Membantu Pencari Lainnya</span><br>
        <span class="username" style="font-size: 20px;"><?php echo $value->nama_universitas;?></a></span>
     	</center>

    <div class="container">
      <div class="row">
      	<div class="col-md-12">
      	<div class="box-body">
      	   <div class="callout" style="background-color: #d2d6de;">
                 <h6 style="padding-bottom: 10px;"><i class="fa fa-warning" style="font-size: 30px;">&nbsp;Perhatian!</i></h6>
                 <div style="font-size:14px;">
                <p>Berikut adalah pedoman penulisan ulasan </p>
                <ul>
                  <li>Tulis ulasan sesuai dengan penggalaman anda</li>
                  <li>Pergunakanlah kata-kata yang sopan</li>
                  <li>Ketika memberikan kritik tentang satu aspek dalam pengalaman, jangan menyudutkan dan menyebutkan nama individu.</li>
                  <li>Jangan menulis data yang bersifat pribadi</li>
                  <li>Ingat bahwa mahasiswa lainnya akan membaca ulasan ini - berikan saran yang membangun</li>
                </ul>
              </div>
              </div>

          </div>

           <form method="POST" action="<?php echo base_url('Pencari/update_ulasan_pencari'.'/'.$value->id_ulasan);?>">
              <input type='hidden' name="id_univ" value="<?php echo $value->id_universitas;?>" >
             



               <center><p style="font-style: calibri; font-size: 18px;">Data Ulasan</p></center>
               <hr>

                <div class="form-group">
                    <label for="exampleInputJudul" class="lab">Rating sebelumnya</label>
                <div style="font-size: 28px;">
                    
                <?php if($value->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($value->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==1){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
          <?php }elseif($value->rating==0){?>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></div>
            </div>

              <div class="form-group">
              <label for="exampleInputJudul" class="lab">Beri rating pada universitas ini</label><br>
              <fieldset class="rating">
                <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Sangat Bagus">5 stars</label>
                <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Bagus">4 stars</label>
                <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Cukup">3 stars</label>
                <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Buruk">2 stars</label>
                <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sangat Buruk">1 star</label>
              </fieldset><br><br>

              </div>

               <div class="form-group">
                <label for="exampleInputJudul" class="lab">Judul</label>
                <input type="text" class="form-control" name="judul_ulasan" id="judul" value="<?php echo $value->judul_ulasan;?>" placeholder="Tulis judul ulasan"> 
               </div>

               <div class="form-group">
               <label class="lab">Menurut pendapat anda, seperti apakah universitas ini ?</label>
                  <textarea class="form-control" rows="3" name="deskripsi_ulasan" placeholder="Ceritakan tentang pengalaman kuliah anda"><?php echo $value->deskripsi_ulasan;?></textarea>
               </div>

             
               <br>
               <div style="float:right">
               <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
               <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
             </div>
             </form>


                </div>
              </div>
      </div>
  </div>

      </div>
   
    </div>
  </div>
</div>

</div>
            <?php } ?>
           </div>
 </div>
</body>
<script>
        $('#modal-tambah').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
 
 
</script>
