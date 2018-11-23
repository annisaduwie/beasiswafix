<?php
$this->load->view('pencari/profilpencari');?>

<div class="col-md-9">
      <div class="box box-primary">
        <div class="box-header with-border">
      
      <h3 class="box-title">Ubah Password</h3>
    </div>

<div class="callout callout-info">

                <p>Anda dapat mengganti password lama</p>
              </div>
          <div class="box-tools pull-right">

          </div>
          <!-- /.box-tools -->
        </div>

        <form role="form" method="POST" action="<?php echo base_url("Pencari/ubah_password");?>">
          <div class="box-body">
            <?php 
        $data=$this->session->flashdata('sukses');
        if($data!=""){ ?>
                            <div class="alert alert-success"><strong>Sukses! </strong> <?=$data;?></div>
                            <?php } ?>
                            <?php 
                            $data2=$this->session->flashdata('error');
                            if($data2!=""){ ?>
                            <div class="alert alert-danger"><strong> Error! </strong> <?=$data2;?></div>
                            <?php } ?>



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