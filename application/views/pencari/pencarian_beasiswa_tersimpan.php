<?php
$this->load->view('pencari/profilpencari');?>
<style>
.img{
  display: block;
  margin-left: auto;
  margin-right: auto;
  height: 120px;
  width: 120px;
  margin-bottom: 20px;
}
</style>


<div class="col-md-9">
 <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title">Halaman Pencarian Beasiswa</h3>
    </div>

    <div class="callout callout-info">
      <p>Berikut adalah list pencarian yang sudah dilakukan. Anda dapat mengahapus data pencarian jika sidah tidak di butuhkan lagi. Anda juga bisa melihat kembali pencarian yang sudah anda lakukan dengan mengeklik tombol "Tampilkan Pencarian".</p>
    </div>
            
            <div class="box-body">
              <input type="hidden" id="id_pencari" name="id_pencari" value="<?php echo $nama_pencari['id_pencari']; ?>">

              <?php
              $id_pencari = $nama_pencari['id_pencari'];
              $query= $this->db->query("SELECT distinct * from pencari, pencarian_beasiswa WHERE pencari.id_pencari=pencarian_beasiswa.id_pencari AND pencarian_beasiswa.id_pencari='$id_pencari' GROUP BY pencarian_beasiswa.id_pencarian_beasiswa order by waktu_pencarian")->num_rows();
              ?>

              <?php if ($query < 1){ ?>
              <img src="<?php echo base_url('assets/images/searching.png');?>" class="img">

                <div class="text-center" style="font-size: 18px;">Anda belum melakukan pencarian</div><br>

              <?php } else{ ?>

              <?php foreach($pencarian as $value){?>
                
              <!-- Post -->
                <div class="post">
                <form action="<?php echo base_url('Pencarian_BeasiswaC/pencarian_beasiswa')?>" method="POST">

                  <div class="user-block">
              
                        <span class="username">
                          <a class="pull-right btn-box-tool" title="Hapus dari riwayat pencarian" data-placement="top" href="<?php echo site_url('Pencari/hapus_pencarian_beasiswa_tersimpan/'.$value->id_pencarian_beasiswa.'/'.$id_pencari);?>" onclick="return confirm('Apakah anda yakin ingin menghapus pencarian ?')"><i class="fa fa-times"></i></a>
                        <?php echo tgl_indo(date("Y-m-d",strtotime($value->waktu_pencarian))); ?> - <?php echo date("H:i",strtotime($value->waktu_pencarian)); ?>
                        </span>

                  </div>
                  <!-- /.user-block -->
                  <p>
                    <?php if($value->keyword_jenjang == '' AND $vslue->keyword_kategori == ''){?> 

            Beasiswa di Negara <?php echo $keyword_negara;?>

        <?php }elseif($value->keyword_kategori_beasiswa == NULL AND $value->keyword_negara == NULL){?>

            Beasiswa untuk Jenjang <?php echo $keyword_jenjang;?>

        <?php }elseif($value->keyword_jenjang == NULL AND $value->keyword_negara == NULL){?>

            <?php echo $value->keyword_kategori_beasiswa;?>

        <?php }elseif($value->keyword_jenjang != NULL AND $value->keyword_kategori_beasiswa != NULL AND $value->keyword_negara == NULL){?>
            <?php echo $value->keyword_kategori_beasiswa;?> untuk Jenjang <?php echo $value->keyword_jenjang;?>
        <?php }elseif($value->keyword_jenjang != NULL AND $value->keyword_kategori_beasiswa == NULL AND $value->keyword_negara != NULL){?>
            Beasiswa <?php echo $value->keyword_jenjang;?> di Negara <?php echo $value->keyword_negara;?>
        <?php }elseif($value->keyword_jenjang == NULL AND $value->keyword_kategori_beasiswa != NULL AND $value->keyword_negara != NULL){?>
           <?php echo $value->keyword_kategori_beasiswa;?> di Negara <?php echo $value->keyword_negara;?>
        <?php }elseif($value->keyword_jenjang != NULL AND $value->keyword_kategori_beasiswa != NULL AND $value->keyword_negara != NULL){?>
            <?php echo $value->keyword_kategori_beasiswa;?> untuk Jenjang di Negara <?php echo $value->keyword_negara;?>
        <?php }?>
                   
                  </p>
                  <input type="hidden" value="<?php echo $value->keyword_jenjang;?>" name="keyword_prodi">
                  <input type="hidden" value="<?php echo $value->keyword_kategori_beasiswa;?>" name="keyword_kategori">
                  <input type="hidden" value="<?php echo $value->keyword_negara;?>" name="keyword_negara">
                  <button type="submit" name="tampil_pencarian" class="btn btn-sm btn-primary btn-flat pull-left">tampilkan pencarian</button><br>
                  </form>
                </div>
              
                <!-- /.post -->
              <?php } ?>

              <?php } ?>




              
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

              </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
  </body>

  <footer class="main-footer">
  <div class="pull-right hidden-xs">

  </div>
  
</footer>

