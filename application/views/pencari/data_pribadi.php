<?php
$this->load->view('pencari/profilpencari');?>

    <div class="col-md-9">
      <div class="box box-primary">
        <div class="box-header with-border">
           <div class="box-header">
                <h3>Data Profil</h3>
        <!-- <small>Version 2.0</small> -->
      </h3>
  </div>

          <div class="callout callout-info">

                <p>Anda dapat melakukan edit pada akun anda dengan mengisi form dibawah ini. 
                Email tidak bisa diubah</p>
              </div>

          <div class="box-tools pull-right">

          </div>
          <!-- /.box-tools -->
        </div>

        <form role="form" method="POST" action="<?php echo base_url()."Pencari/edit_pencari/"?>">
          <div class="box-body">

            <div class="form-group">
              <input type="hidden" id="id_pencari" name="id_pencari" value="<?php echo $nama_pencari['id_pencari']; ?>">
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Nama</label>
              <input type="text" class="form-control" name="nama_pencari" id="nama" value="<?php echo $nama_pencari['nama']; ?>"required ><?php echo form_error('nama_pencari');?>

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Username</label>
              <input type="text" class="form-control" name="username" id="username" value="<?php echo $nama_pencari['username']; ?>" required><?php echo form_error('username');?>

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>
              <input type="text" class="form-control" name="email" id="email" value="<?php echo $nama_pencari['email']; ?>" readonly>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail">Kategori</label>
              <select name="tingkatan" class="form-control required" required>
                <option <?php if($nama_pencari['tingkatan'] == "Pelajar") 
                {
                  echo "selected=selected";
                } 
                ?> value="Pelajar">Pelajar</option>
                <option <?php if($nama_pencari['tingkatan'] == "Mahasiswa") {echo "selected=selected";} ?> value="Mahasiswa">Mahasiswa</option>
                </select><?php echo form_error('tingkatan');?>
              </div><br>
              <div class="box-tools pull-right">
                <input type="submit" value="Simpan" class="btn btn-primary">
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

  <footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
  reserved.
</footer>