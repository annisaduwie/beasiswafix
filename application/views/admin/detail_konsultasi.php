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

          <div class="box box-primary">
              <div class="box-header">
                <h1>Detail Konsultasi
                  <!-- <small>Version 2.0</small> -->
                </h1>
                <ol class="breadcrumb">
                  <li><a href="<?php echo base_url('AdminC/get_konsultasi');?>"><i class="fa fa-envelope">&ensp;Kotak Masuk</i></a></li>
                  <li><i class="fa fa-list">&ensp;Detail Konsultasi</i></li>
                </ol>
              </div>
              
            <div class="box-header with-border">
            <?php foreach($konsultasi as $value){?>
              <form >
               <div class="post">
                  <div class="user-block" ">
                  <div class="row">
                  <div class="col-md-1">
                  
                  <?php 
                if( $value->profil_pic == NULL ){ ?>
                <img class="img-circle img-bordered-sm" src="<?php echo base_url('assets/images/user2.png');?>" style="height: 60px; width: 60px;">

                <?php }else{ ?>

                    <img class="img-circle img-bordered-sm" src="<?php echo base_url('fileUpload/'.$value->profil_pic);?>" alt="user image" style="height: 60px; width: 60px; " >

                <?php } ?>
              </div>
              <div class="col-md-11">
                        <span class="username">
                          <?php echo $value->nama;?>
                        </span>
                        <span class="description">
                            <i class="fa fa-envelope-o">  <?php echo $value->email ;?></i></span>
                    <span class="description"><i class="fa fa-calendar">  <?php echo tgl_indo(date("Y-m-d",strtotime($value->create_dtm))); ?></i> - <?php echo date("H:i",strtotime($value->create_dtm)); ?>
                  </span>     
                  </div>
                </div>


                   <div class="row">
        <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-header with-border">
          <!--     <i class="fa fa-text-width"></i>-->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <dl>
                <dt>Studi Program </dt>
                <dd><span class="description" style="font-size: 14px;"><?php echo $value->program_studi;?></span></dd><br>
                <dt>Kategori</dt>
                <dd><span class="description" style="font-size: 14px;"><?php echo $value->kategori;?></span></dd><br>
                <dd><span class="description" style="font-size: 14px;"><?php echo $value->deskripsi;?></span></dd>
                
              </dl>
            </div>

            <!-- /.box-body -->
          </div>
          <div class="box-tools pull-right">
            <?php if($value->status=='Sudah Dibalas'){?>
                <a value="Terkirim" class="btn btn-primary" disabled><i class="fa fa-send">&ensp;Terkirim</i></a>
            <?php }else{?>
                <a value="Balas" id="tampil" class="btn btn-primary"><i class="fa fa-reply">&ensp;Balas</i></a>
            <?php }?>
              </div>
          <!-- /.box -->
        </div>
        <!-- ./col -->
      </div>



                 
                </div> 
                </form> 
             
                </div>    
                     
          </div>
          <!-- /. box -->

        </div>

        <!-- quick email widget -->
        <div id="form_email" class="form_email" hidden>
          <div class="box box-info">
            <div class="box-header">
              <i class="fa fa-envelope"></i>

              <h3 class="box-title">Quick Email</h3>
              <!-- tools box -->
             
              <!-- /. tools -->
            </div>
            <div class="box-body">
              <form action="<?php echo base_url('AdminC/replyKonsul/'.$value->id_konsultasi) ?>" method="post">
                <div class="form-group">
                  <input type="email" class="form-control" name="email" value="<?php echo $value->email;?>" readonly>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subjek" placeholder="Subyek :">
                </div>
                <div>
                  <textarea class="textarea" placeholder="Message" name="pesan" 
                            style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                </div>
            </div>
            <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" id="sendEmail">Kirim
                <i class="fa fa-arrow-circle-right"></i></button>
            </div>
              </form>
          </div>
        </div>
           <?php } ?>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  
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

<script>
 //Inisiasi awal penggunaan jQuery
 $(function(){
   $('#tampil').click(function(){
   $('.form_email').show();
        });
 });
 </script>
</body>
