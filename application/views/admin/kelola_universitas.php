
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
 <body class="hold-transition skin-blue sidebar-mini" style="padding-right: 0 !important">
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
                <h1>Data Universitas
        <!-- <small>Version 2.0</small> -->
      </h1>
      <ol class="breadcrumb">
        <li class="active"><i class="fa fa-university">&ensp;Universitas</i></li>
      </ol>
              </div>
              <div class="box-body">

                <button type="button" style="background-color: #3C8DBC; color: #fff; padding-right: 15px; margin-bottom: 20px;" class="btn btn-info" data-toggle="modal" data-target="#modal-tambah">
                  Tambah
                </button>

                <table id="example1" class="table table-bordered table-striped">


                  <thead>

                    <tr>
                      <th>No </th>
                      <th>Gambar univ</th>
                      <th>Nama Universitas</th>
                      <th>URL Universitas</th>
                      <th>Kategori Universitas</th>
                      <th>Negara</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                   <?php $no=0; foreach ($universitas as $value): $no++; ?>
                   <tr>   
                    <td><?php echo $no; ?></td>
                    <!-- <td ><center><?php echo $value->id_universitas; ?></center></td> -->
                    <td ><?php 
                    if( $value->gambar_universitas == NULL ){ ?>
                      <img class="profile-user-img img-responsive" src="<?php echo base_url('assets/images/no_pic.jpg');?>">

                    <?php }else{ ?>

                      <img class="profile-user-img img-responsive " src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" alt="User profile picture">

                      <?php } ?></td>
                      <td ><center><?php echo $value->nama_universitas; ?></center></td>
                      <td ><center><?php echo $value->url_universitas; ?></center></td>
                      <td ><?php echo $value->kategori_universitas; ?></td>
                      <td ><?php echo $value->negara;?></td>

                      <td> 

                        <a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" data-original-title="Hapus Data" data-placement="top" href="<?php echo site_url('AdminC/hapusUniv/'.$value->id_universitas); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus universitas  ?')" ><i class="fa fa-times" ></i></a>

                        <a class="btn btn-info btn-xs tooltips" href="<?php echo base_url('AdminC/tampil_admin_fakultas/'.$value->id_universitas);?>">
                          <span data-toogle="tooltip" title="Lihat Fakultas"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a>
                        </td>
                      </tr>
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

<!--   <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer> -->







  <!-- modal untuk tambah manual -->
  <div class="modal fade" id="modal-tambah">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><center>Tambah Universitas</center></h4>
          </div>
          <div class="modal-body">

           <?php echo form_open_multipart('AdminC/tambah_universitas','id ="form" class="form-horizontal"');?> 

           <div class="form-group" style="padding: 5px 0;">
            <label for="inputnip" class="col-sm-2 control-label">Nama Universitas</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="nama_universitas" id="nama_universitas" placeholder="Masukkan Nama Universitas" required oninvalid="this.setCustomValidity('Nama universitas tidak boleh kosong')" oninput="setCustomValidity('')">
            </div>
          </div>

          <div class="form-group" style="padding: 5px 0;">
            <label for="inputnip" class="col-sm-2 control-label">URL</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="url_universitas" id="url_universitas" placeholder="Masukkan URL" required oninvalid="this.setCustomValidity('URL tidak boleh kosong')" oninput="setCustomValidity('')">
            </div>
          </div>

          <div class="form-group" style="padding: 15px 0;">
            <label for="inputurl" class="col-sm-2 control-label">Deskripsi</label>
            <div class="col-sm-10">
              <textarea name="deskripsi_universitas" class="form-control" id="inputnegara" value="" placeholder="Tuliskan Deskripsi"></textarea>
            </div>
          </div>
          <div class="form-group" style="padding: 15px 0;">
            <label for="inputurl" class="col-sm-2 control-label">Alamat Lengkap</label>
            <div class="col-sm-10">
              <textarea name="alamat_universitas" class="form-control" id="alamat" value="" placeholder="Masukkan alamat" required oninvalid="this.setCustomValidity('Alamat tidak boleh kosong')" oninput="setCustomValidity('')"></textarea>
            </div>
          </div>
          
         <div class="form-group" style="padding: 5px 0;">
            <label for="inputnip" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" name="email" id="email" placeholder="Masukkan email">
            </div>
          </div>

          <div class="form-group" style="padding: 5px 0;">
            <label for="inputnip" class="col-sm-2 control-label">No Telepon</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="no_telp" id="no_telp" placeholder="Masukkan no telepon" required oninvalid="this.setCustomValidity('No Telepon tidak boleh kosong')" oninput="setCustomValidity('')">
            </div>
          </div>
          <div class="form-group" style="padding: 15px 0;">
            <label for="kategori" class="col-sm-2 control-label">Kategori</label>
            <div class="col-sm-10">
              <select name="kategori_universitas" class="form-control required">
                <option value="Dalam Negeri">Dalam Negeri</option>
                <option value="Luar Negeri">Luar Negeri</option>
              </select>
            </div>
          </div>
          <div class="form-group" style="padding: 5px 0;">
            <label for="inputnip" class="col-sm-2 control-label">Negara</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="negara" id="negara" placeholder="Masukkan Negara" required oninvalid="this.setCustomValidity('Negara tidak boleh kosong')" oninput="setCustomValidity('')">
            </div>
          </div>

          <div class="form-group" style="padding: 15px 0;"><br>
            <label for="inputurl" class="col-sm-2 control-label">Unggah Gambar</label>
            <div class="col-sm-10">
              <input type="file" id="picuniv" name="picuniv">
              <p class="text-red">*Ukuran gambar maksimal 3 mb</p>
            </div>

          </div>

          <center><img src="<?php echo base_url('assets/images/no_pic.jpg');?>" id="gambar_nodin" height="200" width="200" alt="Preview Gambar" /></center>

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

  function bacaGambar(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
          $('#gambar_nodin').attr('src', e.target.result);
      }
 
      reader.readAsDataURL(input.files[0]);
   }
}
$("#picuniv").change(function(){
   bacaGambar(this);
});

  $('#modal-tambah').on('show.bs.modal', function (e) {
     $('body').addClass('test');
  });






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
