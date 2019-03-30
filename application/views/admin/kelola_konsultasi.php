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
                <h1>Data Konsultasi
                  <!-- <small>Version 2.0</small> -->
                </h1>
                <ol class="breadcrumb">
                  <li class="active"><i class="fa fa-envelope">&ensp;Kotak Masuk</i></li>
                </ol>
              </div>

               <div style="background-color: #d2d6de; height: 80px;">
            <div class="col-md-12" style="padding-top: 8px;" >
            <label>Filter Status</label>
            </div>

            <form action="<?php echo base_url('AdminC/filter_konsultasi');?>" method="POST" style="padding-bottom: 50px;padding-top: 5px;">

              <div class="form-group col-md-6" >
                <div class="input-group input-group-sm">
                  <div class="input-group-addon">
                    <i class="fa fa-bars"></i>
                  </div>

                  <select class="form-control" id="reservation" name="filter_konsultasi" >
                     <option value='0' disable selected>-- pilih status --</option>
                      <option value="belum dibalas">Belum Dibalas</option>
                      <option value="sudah dibalas">Sudah Dibalas</option>
                  </select>
             
                  <span class="input-group-btn">

                      <button type="submit" class="btn btn-primary btn-flat">Cari</button>

                     

                     
                    </span>

                </div>
                <!-- /.input group -->
                
              </div>
              <!-- /.form group -->
            </form>
          </div>
           
            
            <div class="box-body">
              <table id="univ" class="table table-bordered table-striped">
                <thead>
                <tr><center>
                  <th><center>No </center></th>
                  <th><center>Nama</center></th>
                  <th><center>Prodi yang ditanyakan</center></th>
                  <th><center>Kategori yang ditanyakan</center></th>
                  <th><center>Tanggal Masuk</center></th>
                  <th><center>Status</center></th>
                  <th><center>Aksi</center></th>
                 
                </tr>
                </thead>
                  <tbody>
                 <?php $no=0; foreach ($konsultasi as $value): $no++; ?>
                      <tr>   
                        <td><?php echo $no; ?></td>
                        <td ><center><?php echo $value->nama; ?></center></td>
                        <td ><center><?php echo $value->program_studi;?></center></td>
                        <td ><center><?php echo $value->kategori;?></center></td>
                        <td ><center><?php echo $value->create_dtm;?></center></td>
                        <td ><center>
                          <?php if($value->status == 'belum dibalas'){?>
                          <span class="label label-warning"><?php echo $value->status;?></span>
                          <?php }elseif($value->status == 'Sudah Dibalas'){?>
                            <span class="label label-success"><?php echo $value->status;?></span></center></td>
                          <?php }?>
                        <td><a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" data-original-title="Hapus Data" data-placement="top" href="<?php echo site_url('AdminC/hapusKonsultasi/'.$value->id_konsultasi); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus konsultasi  ?')" ><i class="fa fa-times"></i></a>

                          <a class="btn btn-info btn-xs tooltips" href="<?php echo base_url('AdminC/get_detail_konsultasi/'.$value->id_konsultasi);?>">
                          <span data-toogle="tooltip" title="Lihat Konsultasi"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a></td>

                      </tr>

                      <?php endforeach; ?>

                        


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
  <!-- /.content-wrapper -->
<!--   <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer> -->

  
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
    $('#univ').DataTable()
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
