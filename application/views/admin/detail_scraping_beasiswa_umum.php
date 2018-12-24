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
  <!-- daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url();?>AdminLTE/bower_components/select2/dist/css/select2.min.css">
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
        <div class="row" >
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

                <div class="box" >
                <div class="box-header">
                <h1>Data Beasiswa
                  <!-- <small>Version 2.0</small> -->
                </h1>
                <ol class="breadcrumb">
                  <li class="active"><i class="fa fa-graduation-cap ">&ensp;Beasiswa</i></li>
                </ol>
                </div>


            <div style="background-color: #d2d6de; height: 80px;">
            <div class="col-md-12" style="padding-top: 8px;" >
            <label>Filter Tanggal</label>
            </div>
            <form id="form" action="<?php echo base_url('AdminC/get_pencarian_scraping_beasiswa');?>" method="POST" style="padding-bottom: 50px;padding-top: 5px;">

              <div class="form-group col-md-6" >
                <div class="input-group input-group-sm">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
              <?php
              $date_value = "";
              ?>

                  <input type="text" value="<?php echo $date_value;?>" class="form-control" id="reservation" name="date">

                  <span class="input-group-btn">
                      <button type="button" class="btn btn-danger btn-flat"><i class="fa fa-search"></i></button>
                    </span>

                </div>
                <!-- /.input group -->
                
              </div>
              <!-- /.form group -->
            
           
            </form>
          </div>
           

              <div class="box-body">
                <table id="example1" class="table table-bordered table-striped">


                  <thead>

                    <tr>
                      <th>No </th>
                      <th>Id Beasiswa </th>
                      <th>Nama Beasiswa</th>
                      <th>Tanggal Posting</th>
                      <th>Deskripsi</th>
                      


                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=0; foreach ($beasiswa as $value): $no++; ?>
                    <tr>   
                      <td><?php echo $no; ?></td>
                      <td ><?php echo $value->id_konten_beasiswa_umum; ?></td>
                      <td ><?php echo $value->judul; ?></td>
                      <td ><?php echo $value->date; ?></td>
                      <td ><?php echo $value->deskripsi; ?></td>

                      <td> 
                        <a class="btn btn-danger btn-xs tooltips"  data-popup="tooltip" data-original-title="Hapus Data" data-placement="top" href="<?php echo site_url('AdminC/hapus_beasiswa_scraping/'.$value->id_konten_beasiswa_umum); ?>" onclick="return confirm('Apakah anda yakin ingin menghapus universitas  ?')" ><i class="fa fa-times" ></i></a>


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

<!-- <footer class="main-footer">
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

<!-- Select2 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/select2/dist/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="<?php echo base_url();?>AdminLTE/plugins/input-mask/jquery.inputmask.js"></script>
<script src="<?php echo base_url();?>AdminLTE/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url();?>AdminLTE/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/moment/min/moment.min.js"></script>
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="<?php echo base_url();?>AdminLTE/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="<?php echo base_url();?>AdminLTE/plugins/iCheck/icheck.min.js"></script>
<!-- page script -->
<script>


 $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })

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
