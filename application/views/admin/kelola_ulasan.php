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
<style>
.checked{
  color: gold;
}
.test[style] {
     padding-right:0 !important;
 }

</style>
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
                <h1>Data Ulasan Pencari
                  <!-- <small>Version 2.0</small> -->
                </h1>
                <ol class="breadcrumb">
                  <li class="active"><i class="fa fa-file">&ensp;Daftar Ulasan</i></li>
                </ol>
              </div>
          <div class="box-body">
          <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#activity1" data-toggle="tab">Belum Disetujui</a></li>
              <li><a href="#activity2" data-toggle="tab">Sudah Disetujui</a></li>
              <li><a href="#activity3" data-toggle="tab">Tidak Disetujui</a></li>
            </ul>
            <div class="tab-content">
            <div class="active tab-pane" id="activity1">
                <!-- Post -->
                <div class="post">
                
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr><center>
                  <th><center>No </center></th>
                  <th><center>Nama Pencari</center></th>
                  <th><center>Tingkatan</center></th>
                  <th><center>Judul_ulasan</center></th>
                  <th><center>Tanggal Tulis</center></th>
                  <th><center>Status</center></th>
                  <th><center>Lihat Ulasan</center></th>
                  <th><center>Aksi</center></th>
                 
                </tr>
                </thead>
                  <tbody>
                    <?php $no=0; foreach ($ulasan as $value): $no++; ?>
                      <tr>   
                        <td><?php echo $no; ?></td>
                        <td ><center><?php echo $value->nama; ?></center></td>
                        <td ><center><?php echo $value->tingkatan;?></center></td>
                        <td ><center><?php echo $value->judul_ulasan;?></center></td>
                        <td ><center><?php echo $value->post_ulasan;?></center></td>
                        <td>
                          <?php if($value->status_publikasi == 'Belum disetujui'){?>
                          <span class="label label-warning"><?php echo $value->status_publikasi;?></span>
                          <?php }elseif($value->status_publikasi == 'Sudah disetujui'){?>
                            <span class="label label-success"><?php echo $value->status_publikasi;?></span></center></td>
                          <?php } elseif($value->status_publikasi == 'Tidak disetujui'){?>
                            <span class="label label-danger"><?php echo $value->status_publikasi;?></span></center>
                        <?php }?></td>
                        <td>
                          <center><a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal-lihat-<?php echo $value->id_ulasan;?>">
                          <span data-toogle="tooltip" title="Lihat Ulasan"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a></center></td>
                        <td>
                           <a class="btn btn-success btn-xs tooltips" data-toggle="modal" data-target="#modal-setujui-<?php echo $value->id_ulasan;?>">Setujui</a>
                           <a class="btn btn-danger btn-xs tooltips" data-toggle="modal" data-target="#modal-batalkan-<?php echo $value->id_ulasan;?>">Batalkan</a>
                        </td>
                      </tr>
                      <div class="modal fade" id="modal-lihat-<?php echo $value->id_ulasan; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                          <h4 class="modal-title"><center>Detail Ulasan</center></h4>
                              </div>
                            <div class="modal-body">
                              <span class="time"><i class="fa fa-calendar">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo tgl_indo(date("Y-m-d",strtotime($value->post_ulasan))); ?> - <?php echo date("H:i",strtotime($value->post_ulasan)); ?></i></span><br>
                              <span class="time"><i class="fa fa-user">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $value->nama ."&nbsp;"."(". $value->tingkatan .")";?></i></span>
                              <h3 class="timeline-header"><?php echo $value->nama_universitas;?></h3><br>
                              <h4 class="timeline-header"><?php echo $value->judul_ulasan?></h4>
                              <h4 class="timeline-header">
                <?php if($value->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($value->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }else{?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></h4>
            <h5 class="timeline-header"><?php echo $value->deskripsi_ulasan?></h5>


                            </div>
                        </div>
                      </div>
                    </div>

                    <div class="modal fade" id="modal-setujui-<?php echo $value->id_ulasan; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                          <h4 class="modal-title"><center>Konfirmasi</center></h4>
                              </div>
                            <div class="modal-body">
                            <center><img style="width: 70px;height: 70px; margin-bottom: 20px;" src="<?php echo base_url('assets/images/checked.png');""?>"></center>
                              <form method="POST" action="<?php echo base_url('AdminC/update_ulasan');?>">
                                <input type='hidden' name="id_ulasan" value="<?php echo $value->id_ulasan;?>">
                                <input type='hidden' name="judul_ulasan" value="<?php echo $value->judul_ulasan;?>">
                                 <center><p style="font-style: calibri; font-size: 18px; color: #3CB371; padding-bottom: 30px;"><b>Apakah anda yakin ingin menyetujui ulasan ini ?</b></p>
                              
                                  <input type="submit" value="Ya" name="setujui" class="btn" style="width:80px; background-color:#d2d6de;">
                                  <input type="button" class="btn" data-dismiss="modal" value="Tidak" style="width:80px; background-color:#d2d6de;">
                              </form>
                            </div>
                        </div>
                      </div>
                    </div>

                    <div class="modal fade" id="modal-batalkan-<?php echo $value->id_ulasan; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                          <h4 class="modal-title"><center>Konfirmasi</center></h4>
                              </div>
                            <div class="modal-body">
                            <center><img style="width: 70px;height: 70px; margin-bottom: 20px;" src="<?php echo base_url('assets/images/cancel.png');""?>"></center>
                              <form method="POST" action="<?php echo base_url('AdminC/update_ulasan');?>">
                                <input type='hidden' name="id_ulasan" value="<?php echo $value->id_ulasan;?>">
                                 <center><p style="font-style: calibri; font-size: 18px; color: #f56954; padding-bottom: 30px;"><b>Apakah anda yakin ingin membatalkan ulasan ini ?</b></p>
                              
                                  <input type="submit" value="Ya" name="batalkan" class="btn" style="width:80px; background-color:#d2d6de;">
                                  <input type="button" class="btn" data-dismiss="modal" value="Tidak" style="width:80px; background-color:#d2d6de;">
                              </form>
                            </div>
                        </div>
                      </div>
                    </div>
                    <?php endforeach; ?>
                  </tbody>
               
              </table>
              

                </div>
                
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="activity2">
                   <!-- Post -->
                <div class="post">

                    <table id="example3" class="table table-bordered table-striped">
                <thead>
                <tr><center>
                  <th><center>No </center></th>
                  <th><center>Nama Pencari</center></th>
                  <th><center>Tingkatan</center></th>
                  <th><center>Judul_ulasan</center></th>
                  <th><center>Tanggal Tulis</center></th>
                  <th><center>Status</center></th>
                  <th><center>Lihat Ulasan</center></th>
                 
                </tr>
                </thead>
                  <tbody>
                    <?php $no=0; foreach ($ulasan_disetujui as $value): $no++; ?>
                      <tr>   
                        <td><?php echo $no; ?></td>
                        <td ><center><?php echo $value->nama; ?></center></td>
                        <td ><center><?php echo $value->tingkatan;?></center></td>
                        <td ><center><?php echo $value->judul_ulasan;?></center></td>
                        <td ><center><?php echo $value->post_ulasan;?></center></td>
                        <td>
                          <?php if($value->status_publikasi == 'Belum disetujui'){?>
                          <span class="label label-warning"><?php echo $value->status_publikasi;?></span>
                          <?php }elseif($value->status_publikasi == 'Sudah disetujui'){?>
                            <span class="label label-success"><?php echo $value->status_publikasi;?></span></center></td>
                          <?php } elseif($value->status_publikasi == 'Tidak disetujui'){?>
                            <span class="label label-danger"><?php echo $value->status_publikasi;?></span></center>
                        <?php }?></td>
                        <td>
                          <center><a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal-lihat-<?php echo $value->id_ulasan;?>">
                          <span data-toogle="tooltip" title="Lihat Ulasan"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a></center></td>
                        
                      </tr>
                      <div class="modal fade" id="modal-lihat-<?php echo $value->id_ulasan; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                          <h4 class="modal-title"><center>Detail Ulasan</center></h4>
                              </div>
                            <div class="modal-body">
                              <span class="time"><i class="fa fa-calendar">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo tgl_indo(date("Y-m-d",strtotime($value->post_ulasan))); ?> - <?php echo date("H:i",strtotime($value->post_ulasan)); ?></i></span><br>
                              <span class="time"><i class="fa fa-user">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $value->nama ."&nbsp;"."(". $value->tingkatan .")";?></i></span>
                              <h3 class="timeline-header"><?php echo $value->nama_universitas;?></h3><br>
                              <h4 class="timeline-header"><?php echo $value->judul_ulasan?></h4>
                              <h4 class="timeline-header">
                <?php if($value->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($value->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }else{?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></h4>
            <h5 class="timeline-header"><?php echo $value->deskripsi_ulasan?></h5>


                            </div>
                        </div>
                      </div>
                    </div>
                    <?php endforeach; ?>
                  </tbody>
               
              </table>

                </div>


              </div>
              <!-- /.tab-pane -->

               <div class="tab-pane" id="activity3">
                   <!-- Post -->
                <div class="post">

                    <table id="example4" class="table table-bordered table-striped">
                <thead>
                <tr><center>
                  <th><center>No </center></th>
                  <th><center>Nama Pencari</center></th>
                  <th><center>Tingkatan</center></th>
                  <th><center>Judul_ulasan</center></th>
                  <th><center>Tanggal Tulis</center></th>
                  <th><center>Status</center></th>
                  <th><center>Lihat Ulasan</center></th>
                 
                </tr>
                </thead>
                  <tbody>
                    <?php $no=0; foreach ($ulasan_dibatalkan as $value): $no++; ?>
                      <tr>   
                        <td><?php echo $no; ?></td>
                        <td ><center><?php echo $value->nama; ?></center></td>
                        <td ><center><?php echo $value->tingkatan;?></center></td>
                        <td ><center><?php echo $value->judul_ulasan;?></center></td>
                        <td ><center><?php echo $value->post_ulasan;?></center></td>
                        <td>
                          <?php if($value->status_publikasi == 'Belum disetujui'){?>
                          <span class="label label-warning"><?php echo $value->status_publikasi;?></span>
                          <?php }elseif($value->status_publikasi == 'Sudah disetujui'){?>
                            <span class="label label-success"><?php echo $value->status_publikasi;?></span></center></td>
                          <?php } elseif($value->status_publikasi == 'Tidak disetujui'){?>
                            <span class="label label-danger"><?php echo $value->status_publikasi;?></span></center>
                        <?php }?></td>
                        <td>
                          <center><a class="btn btn-info btn-xs tooltips" data-toggle="modal" data-target="#modal-lihat-<?php echo $value->id_ulasan;?>">
                          <span data-toogle="tooltip" title="Lihat Ulasan"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a></center></td>
                        
                      </tr>
                      <div class="modal fade" id="modal-lihat-<?php echo $value->id_ulasan; ?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                          <h4 class="modal-title"><center>Detail Ulasan</center></h4>
                              </div>
                            <div class="modal-body">
                              <span class="time"><i class="fa fa-calendar">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo tgl_indo(date("Y-m-d",strtotime($value->post_ulasan))); ?> - <?php echo date("H:i",strtotime($value->post_ulasan)); ?></i></span><br>
                              <span class="time"><i class="fa fa-user">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $value->nama ."&nbsp;"."(". $value->tingkatan .")";?></i></span>
                              <h3 class="timeline-header"><?php echo $value->nama_universitas;?></h3><br>
                              <h4 class="timeline-header"><?php echo $value->judul_ulasan?></h4>
                              <h4 class="timeline-header">
                <?php if($value->rating==5){?>

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
              <?php
            }elseif($value->rating==4){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==3){ ?>
              <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }elseif($value->rating==2){?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
            <?php }else{?>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>
                <span class="fa fa-star-o"></span>

            <?php }?></h4>
            <h5 class="timeline-header"><?php echo $value->deskripsi_ulasan?></h5>


                            </div>
                        </div>
                      </div>
                    </div>

                   
                    <?php endforeach; ?>
                  </tbody>
               
              </table>

                </div>


              </div>
              <!-- /.tab-pane -->
         
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
      <?php foreach ($ulasan as $value) {?>
        $('#modal-lihat-<?php echo $value->id_ulasan; ?>').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
        $('#modal-setujui-<?php echo $value->id_ulasan; ?>').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
        $('#modal-batalkan-<?php echo $value->id_ulasan; ?>').on('show.bs.modal', function (e) {
        $('body').addClass('test');
        });
      <?php }?>
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
    $(function () {
    $('#example3').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
    $(function () {
    $('#example4').DataTable()
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
