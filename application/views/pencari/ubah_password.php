<?php
$this->load->view('pencari/profilpencari');?>

<div class="col-md-9">
      <div class="box box-primary">
        <div class="box-header with-border">
         <div class="box-header">
                <h3>Ubah Password
        <!-- <small>Version 2.0</small> -->
      </h3>
  </div>
<div class="callout callout-info">

                <p>Anda dapat mengganti password lama</p>
              </div>
          <div class="box-tools pull-right">

          </div>
          <!-- /.box-tools -->
        </div>

        <form role="form" method="POST" action="">
          <div class="box-body">



            <div class="form-group">
              <label for="exampleInputEmail1">Password lama</label>
              <input type="password" class="form-control" name="password_lama" value="" required >

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Password Baru</label>
              <input type="password" class="form-control" name="password_baru" value="" required>

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Ulang Password</label>
              <input type="password" class="form-control" name="ulang_password"  value="" required>
            </div>

            <br>
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