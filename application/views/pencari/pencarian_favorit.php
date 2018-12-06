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
      <h3 class="box-title">Halaman Favorit</h3>
    </div>

    <div class="callout callout-info">
      <p>Di bawah ini adalah universitas yang telah kamu pilih di daftar favorit.</p>
    </div>

      <?php
          $id_pencari = $nama_pencari['id_pencari'];
          $query= $this->db->query("SELECT * from pencarian_favorit where id_pencari='$id_pencari'")->num_rows();
          ?>
          <!-- /.box-header -->
          <?php if($query < 1){?>

            <img src="<?php echo base_url('assets/images/searching.png');?>" class="img">

            <div class="text-center" style="font-size: 18px;">Anda tidak memiliki daftar favorit</div><br>

          <?php } else{ ?>



    <?php foreach ($list_favorit as $value){ ?>
      <div class="box-body">
        <div class="box-body">

             
        <ul class="products-list product-list-in-box">

        
            <form action="<?php echo base_url('PencarianC/detail_pencarian');?>" method="POST" name="form" id="form">

              <li class="item">

                <div class="product-img">

                  <img style="width: 200px; height:150px; padding-right: 10px;" src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" alt="User profile picture">

                </div>
                <div class="product-info">
                  <input type="hidden" value="<?php echo $value->nama_universitas; ?>" name="nama_univ">
                  <a href="javascript:void(0);" onclick="submitForm()" class="product-title"><?php echo $value->nama_universitas; ?></a>


                  <a data-popup="tooltip" title="Hapus dari Favorit" data-placement="top" href="<?php echo site_url('PencarianC/hapus_favorit/'.$value->id_pencarian_favorit.'/'.$id_pencari);?>" onclick="return confirm('Apakah anda yakin ingin menghapus program studi ?')" ><i class="fa fa-times pull-right" ></i></a>

                  <span class="product-description">
                    <span class="icon-location-pin"></span><?php echo $value->negara; ?>
                  </span>
                </div>
              
            </li>

          </form>
        
        </ul>
      </div><hr>
        <?php } ?>
<?php } ?>
</div>
<!-- /.box -->

</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
</body>
<script>
  function submitForm() {
  // Can do some validation here if needed

  document.getElementById('form').submit();  

  return true;
}
</script>


