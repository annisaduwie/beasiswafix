
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
.test[style] {
     padding-right:0 !important;
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
                    <i class="fa fa-exclamation-triangle">&ensp;
                    <?php echo $this->session->flashdata('error'); ?>
                    </i>                 
                  </div>
                <?php } ?>
                <?php  
                $success = $this->session->flashdata('success');
                if($success)
                {
                  ?>
                  <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fa fa-check">&ensp;
                    <?php echo $this->session->flashdata('success'); ?>
                  </i>
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
        <?php echo $nama_fakultas['nama_fakultas'];?>
        <!-- <small>Version 2.0</small> -->
      </h1>
      <ol class="breadcrumb">
        <li><a href="<?php echo base_url('AdminC/get_universitas');?>"><i class="fa fa-university">&ensp;Universitas</i></a></li>
        <li><a href="<?php echo base_url('AdminC/tampil_admin_fakultas/'.$id_univ['id_universitas']);?>"><i class="fa fa-list">&ensp;Detail Universitas</i></a></li>

        <li class="active"><i class="fa fa-book">&ensp;Program Studi</i></li>
      </ol>

              </div>
              <div class="box-body">

                <button type="button" style="background-color: #3C8DBC; color: #fff; padding-right: 15px; margin-bottom: 20px;" class="btn btn-info" data-toggle="modal" data-target="#modal-tambah-<?php echo $id;?>">
                  Tambah
                </button>

                <table id="example1" class="table table-bordered table-striped">


                  <thead>

                    <tr>
                      <th>No </th>
                      <th>Nama Program Studi</th>
                      <th>Tingkatan</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                   <?php $no=0; foreach ($prodi as $value): $no++; ?>
                   <tr>   
                    <td><?php echo $no; ?></td>
                    <!-- <td ><center><?php echo $value->id_universitas; ?></center></td> -->

                    <td ><?php echo $value->nama_prodi; ?></td>
                    <td ><?php echo $value->tingkatan; ?></td>

                    <td> <a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal-<?php echo $value->id_prodi; ?>">
                      <span data-toogle="tooltip" title="Ubah program studi"><i class="fa fa-pencil" style="color: #fff"></i></span></a>
                      
                      <a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" title="Hapus program studi" data-placement="top" href="<?php echo site_url('PencarianC/deleteProdi/'.$value->id_prodi.'/'.$id); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus program studi ?')" ><i class="fa fa-times" ></i></a></td>
                    </tr>
<div class="modal fade" id="modal-<?php echo $value->id_prodi; ?>">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"><center>Ubah Program Studi</center></h4>
        </div>
        <div class="modal-body">

         <?php echo form_open_multipart('PencarianC/edit_prodi','id ="form" class="form-horizontal"');?>
         <input type="hidden" name="id_fakultas" value="<?php echo $value->id_fakultas ?>">
            <div class="form-group">
              <div class="col-sm-10">
                 <input type="hidden" name="id_prodi" class="form-control" id="inputid" value="<?php echo $value->id_prodi; ?>" readonly>
                 <input type="hidden" name="id_prodi" value="<?php echo $value->id_prodi; ?>">
              </div>
            </div>
            <div class="form-group" style="padding: 25px 0;">
              <label for="inputurl" class="col-sm-2 control-label">Nama Program Studi</label>
                <div class="col-sm-10">
                  <input type="text" name="nama_prodi" class="form-control" id="inputurl" value="<?php echo $value->nama_prodi; ?>" >
                </div>
            </div>
          <div class="form-group" style="padding:25px 0;">
            <label for="inputurl" class="col-sm-2 control-label">Tingkatan</label>
              <div class="col-sm-10">
                <select name="tingkatan" class="form-control required" required>
                  <option value="" disabled selected>--Pilih Tingkatan--</option>
                                    <option <?php if($value->tingkatan == "Diploma") 
                                    {
                                      echo "selected=selected";
                                     } 
                                    ?>value="Diploma">Diploma</option>
                                    <option <?php if($value->tingkatan == "Sarjana") 
                                    {
                                      echo "selected=selected";
                                    } 
                                    ?>value="Sarjana">Sarjana</option>
                                    <option <?php if($value->tingkatan == "Magister") 
                                    {
                                      echo "selected=selected";
                                    } 
                                    ?>value="Magister">Magister</option>
                                    <option <?php if($value->tingkatan == "Doktor") 
                                    {
                                      echo "selected=selected";
                                    } 
                                    ?>value="Doktor">Doktor</option>
                                  </select>
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

                    
                <?php  endforeach; ?>


              </tbody>

            </table>
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

<!-- <footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
  reserved.
</footer>
 -->

<?php 
$data2=$this->session->flashdata('error');
?>              

<!-- modal untuk tambah manual -->
<?php foreach($fakultas as $value){?> 
<div class="modal fade" id="modal-tambah-<?php echo $value->id_fakultas;?>">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"><center>Tambah Program Studi</center></h4>
        </div>
        <div class="modal-body">

         <?php echo form_open_multipart('PencarianC/tambah_prodi','id ="form" class="form-horizontal"');?> 
         <input type="hidden" name="id_fakultas" value="<?php echo $value->id_fakultas;?>">
         <input type="hidden" name="id_universitas" value="<?php echo $value->id_universitas;?>">
        

         <div class="form-group" style="padding: 5px 0;">
                                <label for="inputurl" class="col-sm-2 control-label">Nama Program studi</label>
                                <div class="col-sm-10">
                                  <input type="text" name="nama_prodi" class="form-control" id="inputurl" placeholder="Masukkan Nama Prodi" required oninvalid="this.setCustomValidity('Nama prodi tidak boleh kosong')" oninput="setCustomValidity('')">
                                </div>
                              </div>

        <div class="form-group" style="padding: 5px 0;">
              <label for="inputurl" class="col-sm-2 control-label">Tingkatan</label>
              <div class="col-sm-10">
              <select name="tingkatan" class="form-control" required oninvalid="this.setCustomValidity('Silahkan pilih tingkatan terlebih dahulu')" oninput="this.setCustomValidity('')" >
                <option value="" disabled selected>--Pilih Tingkatan--</option>
                <option value="Diploma">Diploma</option>
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
<?php }?>
</div>
  
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
      <?php foreach ($fakultas as $value) {?>
        $('#modal-tambah-<?php echo $value->id_fakultas; ?>').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
      <?php } ?>
      <?php foreach ($fakultas as $value) {?>
        $('#modal-<?php echo $value->id_fakultas; ?>').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
      <?php } ?>
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
