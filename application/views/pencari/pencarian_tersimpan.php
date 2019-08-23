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
      <h3 class="box-title">Halaman Pencarian Jurusan</h3>
    </div>

    <div class="callout callout-info">
      <p>Berikut adalah daftar pencarian yang sudah dilakukan. Anda dapat mengahapus data pencarian jika sidah tidak di butuhkan lagi. Anda juga bisa melihat kembali pencarian yang sudah anda lakukan dengan mengeklik tombol "Tampilkan Pencarian".</p>
    </div>
            
            <div class="box-body">
              <input type="hidden" id="id_pencari" name="id_pencari" value="<?php echo $nama_pencari['id_pencari']; ?>">

              <?php
              $id_pencari = $nama_pencari['id_pencari'];
              $query= $this->db->query("SELECT distinct * from pencari, pencarian WHERE pencari.id_pencari=pencarian.id_pencari AND pencarian.id_pencari='$id_pencari' AND pencarian.status='Belum Dihapus' GROUP BY pencarian.id_pencarian order by waktu_pencarian")->num_rows();
              ?>

              <?php if ($query < 1){ ?>
              <img src="<?php echo base_url('assets/images/searching.png');?>" class="img" style="margin-top: 50px">

                <div class="text-center" style="font-size: 18px;">Anda belum melakukan pencarian</div><br>

              <?php } else{ ?>

              <?php foreach($pencarian as $value){?>
                
              <!-- Post -->
                <div class="post">
                <form action="<?php echo base_url('PencarianC/getPencarian')?>" method="POST">

                  <div class="user-block">
              
                        <span class="username">
                          <a class="pull-right btn-box-tool" title="Hapus dari Favorit" data-placement="top" href="<?php echo site_url('Pencari/hapus_pencarian_tersimpan/'.$value->id_pencarian.'/'.$id_pencari);?>" onclick="return confirm('Apakah anda yakin ingin menghapus pencarian ?')"><i class="fa fa-times"></i></a>
                        <?php echo tgl_indo(date("Y-m-d",strtotime($value->waktu_pencarian))); ?> - <?php echo date("H:i",strtotime($value->waktu_pencarian)); ?>
                        </span>

                  </div>
                  <!-- /.user-block -->
                  <p>
                    Jurusan <?php echo $value->keyword_prodi;?> <?php echo $value->keyword_tingkatan ;?> di <?php echo $value->keyword_kategori;?><br>
                   
                  </p>
                  <input type="hidden" value="<?php echo $value->keyword_prodi;?>" name="keyword_prodi">
                  <input type="hidden" value="<?php echo $value->keyword_kategori;?>" name="keyword_kategori">
                  <input type="hidden" value="<?php echo $value->keyword_tingkatan ;?>" name="keyword_tingkatan">
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


