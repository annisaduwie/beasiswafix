<?php
$this->load->view('pencari/profilpencari');?>
  
  <div class="col-md-9">
 <div class="box box-primary">
               
           
     <div class="box-header with-border">
      <h3 class="box-title">Data Profil</h3>

    </div>

    <div class="callout callout-info">
      <p>Anda dapat melakukan edit pada akun anda dengan mengisi form dibawah ini. 
        Email tidak bisa diubah</p>
    </div>
     <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                if($error)
                {
                  ?>
                  <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('error_data_profil'); ?>                    
                  </div>
                <?php } ?>
                <?php  
                $success = $this->session->flashdata('success_data_profil');
                if($success)
                {
                  ?>
                  <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <?php echo $this->session->flashdata('success_data_profil'); ?>
                  </div>
                <?php } ?>

                <div class="row">
                  <div class="col-md-12">
                    <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                  </div>
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
              <input type="text" class="form-control" name="kategori" value="<?php echo $nama_pencari['tingkatan'];?>" readonly>
              
              <!-- <select name="tingkatan" class="form-control required" readonly>
                <option <?php if($nama_pencari['tingkatan'] == "Pelajar") 
                {
                  echo "selected=selected";
                } 
                ?> value="Pelajar">Pelajar</option>
                <option <?php if($nama_pencari['tingkatan'] == "Mahasiswa") {echo "selected=selected";} ?> value="Mahasiswa">Mahasiswa</option>
                </select>
                <?php echo form_error('tingkatan');?> -->
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
