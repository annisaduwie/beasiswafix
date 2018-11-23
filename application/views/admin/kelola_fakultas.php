
<?php
$this->load->view('admin/head_admin');
?>
<head>
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
   <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/dist/css/skins/_all-skins.min.css">
 </head>
 <style>
 .img{
  height: 240px;
  width: 290px;
 }
</style>

 <?php
 $this->load->view('admin/headerAdmin');
 ?>
 <body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->


      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-xs-12">

            <div class="row">
              <div class="col-md-12">
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

                <div class="row">
                  <div class="col-md-12">
                    <?php echo validation_errors('<div class="alert alert-danger alert-dismissable">', ' <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button></div>'); ?>
                  </div>
                </div>
              </div>
            </div>


            <div class="box">
              <div class="box-header">

      <h1>
        <?php echo $nama_univ['nama_universitas'];?>
        <!-- <small>Version 2.0</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('AdminC/get_universitas');?>">Universitas</a></li>
        <li class="active">Detail Universitas</li>
      </ol>

      <h3>
        Informasi Umum
        <!-- <small>Version 2.0</small> -->
      </h3><hr>

      <div class="row">
      <div class="col-md-4">
      
      <table class="table table-bordered table-striped">
        <tr>
          <td colspan="2" style="text-align: center;"><img class="img" src="<?php echo base_url('universitas/'.$nama_univ['gambar_universitas']);?>"></td>
        </tr>
        <tr>
          <td>Alamat  </td>
          <td><?php echo $nama_univ['alamat_universitas'];?></td>
        </tr>
        <tr>
          <td>Email </td>
          <td><?php echo $nama_univ['email'];?></td>
        </tr>
        <tr>
          <td>No Telepon </td>
          <td><?php echo $nama_univ['no_telp'];?></td>
        </tr>
      </table>
    </div>
      <div class="col-md-8">
        <p><?php echo $nama_univ['deskripsi_universitas']?></p>
      </div>
    </div>


              </div>


              <div class="box-body"><hr>
                <h3>
       Data Fakultas <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-tambah-<?php echo $id;?>"><span data-toogle="tooltip" title="Tambah Fakultas">
                  <i class=" fa fa-plus"></i></span>
                </button>
        <!-- <small>Version 2.0</small> -->
      </h3><hr>

                

                <table id="example1" class="table table-bordered table-striped">


                  <thead>

                    <tr>
                      <th>No </th>
                      <th>Nama Fakultas</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                   <?php $no=0; foreach ($fakultas as $value): $no++; ?>
                   <tr>   
                    <td><?php echo $no; ?></td>
                    <!-- <td ><center><?php echo $value->id_universitas; ?></center></td> -->

                    <td ><?php echo $value->nama_fakultas; ?></td>

                    <td> <a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal-<?php echo $value->id_fakultas; ?>">
                      <span data-toogle="tooltip" title="Ubah"><i class="fa fa-pencil" style="color: #fff"></i></span></a>
                      
                      <a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" data-original-title="Hapus Data" data-placement="top" href="<?php echo site_url('AdminC/hapusFakultas/'.$value->id_univ_fak.'/'.$id); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus program studi ?')" ><i class="fa fa-times" ></i></a>

                      <a class="btn btn-info btn-xs tooltips" href="<?php echo base_url('PencarianC/tampil_admin_prodi/'.$value->id_fakultas);?>">
                          <span data-toogle="tooltip" title="Lihat Prodi"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a>

                    </td>
                    </tr>

                    <div class="modal fade" id="modal-<?php echo $value->id_fakultas; ?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title"><center>Ubah Fakultas</center></h4>
                            </div>
                            <div class="modal-body">

                              <?php echo form_open_multipart('AdminC/edit_fakultas','id ="form" class="form-horizontal"');?>
                              <input type="hidden" name="id_universitas" value="<?php echo $value->id_universitas ?>">
                              <div class="form-group" style="padding: 15px 0;">
                                <div class="col-sm-10">
                                  <input type="hidden" name="id_fakultas" class="form-control" id="inputid" value="<?php echo $value->id_fakultas; ?>" readonly>
                                  <input type="hidden" name="id_fakultas" value="<?php echo $value->id_fakultas; ?>">
                                </div>
                              </div>
                              <div class="form-group" style="padding: 15px 0;">
                                <label for="inputurl" class="col-sm-2 control-label">Nama Fakultas</label>
                                <div class="col-sm-10">
                                  <input type="text" name="nama_fakultas" class="form-control" id="inputurl" value="<?php echo $value->nama_fakultas; ?>" >
                                </div>
                              </div>
                              

                            </div>


                            <div class="modal-footer">
                              <button type="button" style="margin-left: 5px;"class="btn btn-default pull-right" data-dismiss="modal">Batal</button>
                              <input type="submit" value="Simpan" class="btn btn-primary">
                            </div>
                          </div>
                        </div>
                        <?php echo form_close(); ?> 
                      </div>
                      <!-- /.modal-content -->
                  


                
                <?php  endforeach; ?>


              

                <table id="example" class="table table-bordered table-striped">

                    <hr>
                <h3>
       Data Beasiswa <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-tambah_beasiswa"><span data-toogle="tooltip" title="Tambah Beasiswa">
                 <i class=" fa fa-plus"></i></span>
                </button>
        <!-- <small>Version 2.0</small> -->
      </h3><hr>
 

                  <thead>

                    <tr>
                      <th>No </th>
                      <th>URL Beasiswa</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=0; foreach ($beasiswa as $value): $no++; ?>
                   <tr>   
                    <td><?php echo $no; ?></td>
                      <td ><?php echo $value->url; ?></td>
                        <td> <a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal1-<?php echo $value->id_beasiswa; ?>">
                        <span data-toogle="tooltip" title="Ubah"><i class="fa fa-pencil" style="color: #fff"></i></span></a>

                        <a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" data-original-title="Hapus Data" data-placement="top" href="<?php echo site_url('AdminC/hapus_beasiswa/'.$nama_univ['id_universitas'].'/'.$value->id_beasiswa_univ); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus universitas  ?')" ><i class="fa fa-times" ></i></a>

                       
                        </td>
                      </tr>

                       <div class="modal fade" id="modal1-<?php echo $value->id_beasiswa; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title"><center>Ubah Beasiswa</center></h4>
                              </div>

                              <div class="modal-body">
                                <?php echo form_open_multipart('AdminC/edit_beasiswa','id ="form" class="form-horizontal"');?>

                                <div class="form-group" style="padding: 10px 0;">
                                 
                                  <div class="col-sm-10">
                                    <input type="hidden" name="id_universitas" class="form-control" value="<?php echo $value->id_universitas; ?>" readonly>
                                    <input type="hidden" name="id_beasiswa" value="<?php echo $value->id_beasiswa; ?>">
                                    <input type="hidden" name="id_beasiswa_univ" value="<?php echo $value->id_beasiswa_univ; ?>">
                                  </div>
                                </div>
                                
                               
                                <div class="form-group" style="padding: 15px 0;">
                                  <label for="inputurl" class="col-sm-2 control-label">URL Beasiswa</label>
                                  <div class="col-sm-10">
                                    <input type="text" name="url_beasiswa" class="form-control" id="inputurl" value="<?php echo $value->url; ?>" >
                                  </div>
                                </div>

                               

                              </div>


                              <div class="modal-footer">
                                <button type="button" style="margin-left: 5px;"class="btn btn-default pull-right" data-dismiss="modal">Batal</button>
                                <input type="submit" value="Simpan" class="btn btn-primary">
                              </div>
                           
                          <?php echo form_close(); ?> 
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->


                    <?php endforeach;?>



              </tbody>

            </table>

             <!-- modal untuk tambah manual -->
  <div class="modal fade" id="modal-tambah_beasiswa">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><center>Tambah Beasiswa</center></h4>
          </div>
          <div class="modal-body">

           <?php echo form_open_multipart('AdminC/tambah_beasiswa','id ="form" class="form-horizontal"');?> 
          <input type="text" name="id_universitas" class="form-control" value="<?php echo $value->id_universitas; ?>" readonly>
          <div class="form-group" style="padding: 5px 0;">
            <label for="inputurl" class="col-sm-2 control-label">URL Beasiswa</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Masukkan URL Beasiswa" name="url_beasiswa" class="form-control" id="inputurl" required oninvalid="this.setCustomValidity('URL tidak boleh kosong')" oninput="setCustomValidity('')">
            </div>
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
          <input type="submit" value="Simpan" class="btn btn-primary">
        </div>
        <?php echo form_close(); ?> 
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->



          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>

<footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
  reserved.
</footer>





<?php 
$data2=$this->session->flashdata('error');
?>              

<!-- modal untuk tambah manual -->
<div class="modal fade" id="modal-tambah-<?php echo $id;?>">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"><center>Tambah Fakultas</center></h4>
        </div>
        <div class="modal-body">

         <?php echo form_open_multipart('AdminC/tambah_fakultas','id ="form" class="form-horizontal"');?> 
         <input type="hidden" value="<?php echo $id;?>" class="form-control" name="id_universitas" >
         
         <input type="hidden" value="<?php echo $id_fakultas['id_fakultas'];?>" class="form-control" name="id_fakultas" >
       

         <div class="form-group" style="padding: 5px 0;">
          <label for="inputnip" class="col-sm-2 control-label">Nama Fakultas</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="nama_fakultas" id="nama_prodi" placeholder="Masukkan Nama Fakultas">
          </div>
        </div>

        <div class="form-group" style="padding: 5px 0;">
                                <label for="inputurl" class="col-sm-2 control-label">Nama Prodi</label>
                                <div class="col-sm-10">
                                  <input type="text" name="nama_prodi" class="form-control" id="inputurl" placeholder="Masukkan Nama Prodi">
                                </div>
                              </div>

        <div class="form-group" style="padding: 5px 0;">
              <label for="inputurl" class="col-sm-2 control-label">Tingkatan</label>
              <div class="col-sm-10">
              <select name="tingkatan" class="form-control required" required>
                <option value="" disabled selected>--Pilih Tingkatan--</option>
                <option value="Sarjana">Diploma</option>
                <option value="Sarjana">Sarjana</option>
                <option value="Magister">Magister</option>
                <option value="Doktor">Doktor</option>
                </select>
              </div>
              </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
          <input type="submit" value="Simpan" class="btn btn-primary">
        </div>
        <?php echo form_close(); ?> 
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->
  


  
  <!-- ./wrapper -->


  <!-- jQuery 3 -->
  <script src="<?php echo base_url();?>AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- DataTables -->
  <script src="<?php echo base_url();?>AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url();?>AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="<?php echo base_url();?>AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="<?php echo base_url();?>AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo base_url();?>AdminLTE/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo base_url();?>AdminLTE/dist/js/demo.js"></script>
  <!-- page script -->
  <script>
    $(function () {
      $('#example1').DataTable()
      $('#example2').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      })
    })

 </script>

  <script>
    $(function () {
      $('#example').DataTable()
      $('#example2').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      })
    })
    /** add active class and stay opened when selected */
    var url = window.location;

    // for sidebar menu entirely but not cover treeview
    $('ul.sidebar-menu a').filter(function() {
     return this.href == url;
   }).parent().addClass('active');

    // for treeview
    $('ul.treeview-menu a').filter(function() {
     return this.href == url;
   }).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active');
 </script>
</body>
