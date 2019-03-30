<?php
$this->load->view('pencari/profilpencari');?>

<div class="col-md-9">
  <div class="box box-primary">
    <div class="box-header with-border">

      <h3 class="box-title">Konsultasi</h3><br>

    </div>


    <div class="callout callout-info">
      <p>Balasan konsultasi akan dikirim melalui email, pastikan email yang tertulis sudah benar</p>
    </div>

    <?php
    $this->load->helper('form');
    $error = $this->session->flashdata('error');
    if($error)
    {
      ?>
      <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $this->session->flashdata('error'); ?>                    
      </div>
    <?php } ?>
    <?php  
    $success = $this->session->flashdata('success');
    if($success)
    {
      ?>
      <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <?php echo $this->session->flashdata('success'); ?>
      </div>
    <?php } ?>
    <!-- /.box-tools -->
  </div>

  <form role="form" method="POST" action="<?php echo base_url()."Pencari/tambah_konsultasi/"?>">
    <div class="box-body">

      <div class="form-group">

        <input type="hidden" id="id_pencari" name="id_pencari" value="<?php echo $nama_pencari['id_pencari']; ?>">
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Nama</label>
        <input type="text" class="form-control" name="nama" id="email" value="<?php echo $nama_pencari['nama']; ?>" readonly>
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Email</label>
        <input type="text" class="form-control" name="email" id="email" value="<?php echo $nama_pencari['email']; ?>" readonly>
      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">No HP</label>
        <input type="text" class="form-control" name="no_hp" id="nama" placeholder="contoh : 081xxxxxxxxx">

      </div>

      <div class="form-group">
        <label for="exampleInputEmail1">Program yang dicari</label>
        <input type="text" class="form-control" name="nama_prodi" id="nama_prodi" placeholder="contoh : Komputer dan Sistem Informasi" type="text" name="nama_prodi" class="form-control" id="inputurl" placeholder="Masukkan Nama Prodi" required oninvalid="this.setCustomValidity('program yang dicari harus diisi')" oninput="setCustomValidity('')">

      </div>

      <div class="form-group">
        <label for="exampleInputEmail">Kategori</label>
        <select name="kategori" class="form-control required" required onvalid="this.setCustomValidity('Kkategori negara harus disi')" >
          <option value="Dalam Negeri">Dalam Negeri</option>
          <option value="Luar Negeri">Luar Negeri</option>
        </select>
      </div>

      <div class="form-group">
        <label>Deskripsi</label>
        <textarea class="form-control" rows="3" name="deskripsi" placeholder="Enter ..."></textarea>
      </div>

      <div class="box-tools pull-right">
        <input type="submit" value="Kirim" class="btn btn-primary">
      </div>
    </div>
    <!-- /.box-body -->

  </form>

</div>
<!-- /.box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->






</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
</body>
