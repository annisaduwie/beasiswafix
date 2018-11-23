<?php
$this->load->view('pencari/profilpencari');?>

    <div class="col-md-9">
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Konsultasi</h3><br>

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
              <input type="text" class="form-control" name="nama" id="email" value="<?php echo $nama_pencari['nama']; ?>" readonly>
            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>
              <input type="text" class="form-control" name="email" id="email" value="<?php echo $nama_pencari['email']; ?>" readonly>
            </div>

             <div class="form-group">
              <label for="exampleInputEmail1">No HP</label>
              <input type="text" class="form-control" name="no_hp" id="nama" value=" "required ><?php echo form_error('no_hp');?>

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Program yang dicari</label>
              <input type="text" class="form-control" name="nama_pencari" id="nama" value=" "required ><?php echo form_error('nama_pencari');?>

            </div>

            <div class="form-group">
              <label for="exampleInputEmail">Kategori</label>
              <select name="tingkatan" class="form-control required" required>
                <option value="Dalam Negeri">Dalam Negeri</option>
                <option value="Luar Negeri">Luar Negeri</option>
                </select>
              </div>

            <div class="form-group">
                  <label>Deskripsi</label>
                  <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
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

  <footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
  reserved.
</footer>