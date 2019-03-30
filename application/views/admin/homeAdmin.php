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
    <section class="content-header">
      <h1>
        Dashboard
      </h1>
    </section>
    <?php 
    $result_pelajar = $this->db->query("SELECT count(id_pencari) as jumlah_pelajar from pencari where tingkatan='Pelajar'")->row_array(); 
    $result_mahasiswa = $this->db->query("SELECT count(id_pencari) as jumlah_mahasiswa from pencari where tingkatan='Mahasiswa'")->row_array();
    $result_pencari =  $this->db->query("SELECT count(id_pencari) as jumlah_pencari from pencari")->row_array();
    $result_universitas = $this->db->query("SELECT count(id_universitas) as jumlah_universitas from universitas")->row_array();
    $result_beasiswa = $this->db->query("SELECT count(id_konten_beasiswa_umum) as jumlah_beasiswa from konten_beasiswa")->row_array();
    // $persen_pelajar = ($result_pelajar['jumlah_pelajar']/$result_pencari['jumlah_pencari'])*100;
    // $persen_mahasiswa = ($result_mahasiswa['jumlah_mahasiswa']/$result_pencari['jumlah_pencari'])*100;
    ?>

 <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?php echo $result_pelajar['jumlah_pelajar'];?></h3>

              <p>Pelajar</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
          
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              
              <h3><?php echo $result_mahasiswa['jumlah_mahasiswa'];?><sup style="font-size: 20px"></sup></h3>

              <p>Mahasiswa</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            
          </div>
        </div>
        <!-- col-->
          <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              
              <h3><?php echo $result_universitas['jumlah_universitas'];?><sup style="font-size: 20px"></sup></h3>

              <p>Universitas</p>
            </div>
            <div class="icon">
              <i class="ion ion-home"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
         <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              
              <h3><?php echo $result_beasiswa['jumlah_beasiswa'];?><sup style="font-size: 20px"></sup></h3>

              <p>Beasiswa</p>
            </div>
            <div class="icon">
              <i class="ion ion-university"></i>
            </div>
            
          </div>
        </div>
       
      </div>

      <div class="row">
        
        <!-- /.col (LEFT) -->
        <div class="col-md-12">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Grafik Pencarian Universitas</h3>
            </div>
            <div class="box-body">
              <div class="chart">
            <div style="float: right;">
                 <ul class="sidebar-menu" data-widget="tree">
                  <li><i class="fa fa-square" style="color: #c1c7d1"></i> <span>Mahasiswa</span></a></li>
                 <li><i class="fa fa-square" style="color: #3b8bba"></i> <span>Pelajar</span></a></li>
                 
               </ul>
             </div>
                <canvas id="lineChart" style="height:250px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Grafik Pencarian Beasiswa</h3>
            </div>
            <div class="box-body">
              <div class="chart">
            <div style="float: right;">
                 <ul class="sidebar-menu" data-widget="tree">
                  <li><i class="fa fa-square" style="color: #c1c7d1"></i> <span>Mahasiswa</span></a></li>
                 <li><i class="fa fa-square" style="color: #3b8bba"></i> <span>Pelajar</span></a></li>
                 
               </ul>
             </div>
                <canvas id="lineChartbeasiswa" style="height:250px"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


        </div>
        <!-- /.col (RIGHT) -->

      </div>
      <!-- /.row -->
<!-- TABLE: LATEST ORDERS -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Universitas Favorit</h3>

             
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="table-responsive">
                <table class="table no-margin">
                  <thead>
                  <tr>
                    <th>No</th>
                    <th>Nama Universitas</th>
                    <th>Popularitas</th>
                  </tr>
                  </thead>
                  <tbody>
                     <?php $no=0; foreach ($universitas_favorit as $value): $no++; ?>
                  <tr>
                    <td><?php echo $no; ?></td>
                    <td><?php echo $value->nama_universitas; ?></td>
                    <td><?php echo $value->total; ?>
                    <?php
                    $nilai_max = $this->db->query("SELECT Max(total) as maksimum from (select count(*) as total from pencarian_favorit, universitas, detail_universitas WHERE pencarian_favorit.id_universitas=universitas.id_universitas AND universitas.id_universitas=detail_universitas.id_universitas GROUP BY pencarian_favorit.id_universitas order by total) as total;")->row_array();
                    if( $value->total == $nilai_max['maksimum']){ ?>
                    <i class="fa fa-star text-yellow"></i>
                    <?php }?>
                  </td>
                  </tr>
                 <?php  endforeach; ?>
                  </tbody>
                </table>
              </div>
              <!-- /.table-responsive -->
            </div>
            <!-- /.box-body -->
           
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
    </section>
    <!-- /.content -->  
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- ChartJS -->
<script src="<?php echo base_url('AdminLTE/bower_components/chart.js/Chart.js');?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/demo.js"></script>

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

  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */

    //--------------
    //- AREA CHART -
    //--------------

    // Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $('#lineChart').get(0).getContext('2d')
    // This will get the first returned node in the jQuery collection.
    var areaChart       = new Chart(areaChartCanvas)

    var areaChartData = {
      labels  : ['Januari', 'Februari', 'Maret', 'April', 'Mei'],
      datasets: [
        {
          label               : 'Electronics',
          fillColor           : 'rgba(210, 214, 222, 1)',
          strokeColor         : 'rgba(210, 214, 222, 1)',
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data                : [
          <?php  
          $result_januari = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='1' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_januari['jumlah_pencarian'];
          ?>, 
          <?php  
          $result_februari = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='2' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_februari['jumlah_pencarian'];
          ?>,
          <?php  
          $result_maret = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='3' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_maret['jumlah_pencarian'];
          ?>,
          <?php  
          $result_april = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='4' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_april['jumlah_pencarian'];
          ?>,
          <?php
          $result_mei = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='5' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_mei['jumlah_pencarian'];
          ?>
          ]
        },
        {
          label               : 'Digital Goods',
          fillColor           : 'rgba(60,141,188,0.9)',
          strokeColor         : 'rgba(60,141,188,0.8)',
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : [ 
          <?php
          $result_januari = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='1' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_januari['jumlah_pencarian'];
          ?>,
          <?php  
          $result_februari = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='2' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_februari['jumlah_pencarian'];
          ?>,
          <?php
          $result_maret = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='3' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_maret['jumlah_pencarian'];
          ?>,
          <?php
          $result_april = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='4' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_april['jumlah_pencarian'];
          ?>,
          <?php
          $result_mei = $this->db->query("SELECT count(id_pencarian) as jumlah_pencarian from pencarian, pencari where pencarian.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='5' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_mei['jumlah_pencarian'];
          ?>
          ]
        }
      ]
    }

    var areaChartOptions = {
      //Boolean - If we should show the scale at all
      showScale               : true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines      : false,
      //String - Colour of the grid lines
      scaleGridLineColor      : 'rgba(0,0,0,.05)',
      //Number - Width of the grid lines
      scaleGridLineWidth      : 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines  : true,
      //Boolean - Whether the line is curved between points
      bezierCurve             : true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension      : 0.3,
      //Boolean - Whether to show a dot for each point
      pointDot                : false,
      //Number - Radius of each point dot in pixels
      pointDotRadius          : 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth     : 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius : 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke           : true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth      : 2,
      //Boolean - Whether to fill the dataset with a color
      datasetFill             : true,
      //String - A legend template
      legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].lineColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio     : true,
      //Boolean - whether to make the chart responsive to window resizing
      responsive              : true
    }

    //Create the line chart
    areaChart.Line(areaChartData, areaChartOptions)

    //-------------
    //- LINE CHART -
    //--------------
    var lineChartCanvas          = $('#lineChart').get(0).getContext('2d')
    var lineChart                = new Chart(lineChartCanvas)
    var lineChartOptions         = areaChartOptions
    lineChartOptions.datasetFill = false
    lineChart.Line(areaChartData, lineChartOptions)

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
   

    barChartOptions.datasetFill = false
    barChart.Bar(barChartData, barChartOptions)
  })

 $(function () {


// Get context with jQuery - using jQuery's .get() method.
    var areaChartCanvas = $('#lineChartbeasiswa').get(0).getContext('2d')
    // This will get the first returned node in the jQuery collection.
    var areaChart       = new Chart(areaChartCanvas)

    var areaChartData = {
      labels  : ['Januari', 'Februari', 'Maret', 'April', 'Mei'],
      datasets: [
        {
          label               : 'Electronics',
          fillColor           : 'rgba(210, 214, 222, 1)',
          strokeColor         : 'rgba(210, 214, 222, 1)',
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data                : [
          <?php  
          $result_januari = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='1' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_januari['jumlah_pencarian'];
          ?>, 
          <?php  
          $result_februari = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='2' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_februari['jumlah_pencarian'];
          ?>,
          <?php  
          $result_maret = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='3' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_maret['jumlah_pencarian'];
          ?>,
          <?php  
          $result_april = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='4' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_april['jumlah_pencarian'];
          ?>,
          <?php 
          $result_mei = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='5' AND pencari.tingkatan='Mahasiswa'")->row_array();
          echo $result_mei['jumlah_pencarian'];
          ?>
          ]
        },
        {
          label               : 'Digital Goods',
          fillColor           : 'rgba(60,141,188,0.9)',
          strokeColor         : 'rgba(60,141,188,0.8)',
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data                : [ 
          <?php
          $result_januari = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='1' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_januari['jumlah_pencarian'];
          ?>,
          <?php  
          $result_februari = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='2' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_februari['jumlah_pencarian'];
          ?>,
          <?php
          $result_maret = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='3' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_maret['jumlah_pencarian'];
          ?>,
          <?php
          $result_april = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='4' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_april['jumlah_pencarian'];
          ?>,
          <?php
          $result_mei = $this->db->query("SELECT count(id_pencarian_beasiswa) as jumlah_pencarian from pencarian_beasiswa, pencari where pencarian_beasiswa.id_pencari=pencari.id_pencari AND MONTH(waktu_pencarian)='5' AND pencari.tingkatan='Pelajar'")->row_array();
          echo $result_mei['jumlah_pencarian'];
          ?>
          ]
        }
      ]
    }

    var areaChartOptions = {
      //Boolean - If we should show the scale at all
      showScale               : true,
      //Boolean - Whether grid lines are shown across the chart
      scaleShowGridLines      : false,
      //String - Colour of the grid lines
      scaleGridLineColor      : 'rgba(0,0,0,.05)',
      //Number - Width of the grid lines
      scaleGridLineWidth      : 1,
      //Boolean - Whether to show horizontal lines (except X axis)
      scaleShowHorizontalLines: true,
      //Boolean - Whether to show vertical lines (except Y axis)
      scaleShowVerticalLines  : true,
      //Boolean - Whether the line is curved between points
      bezierCurve             : true,
      //Number - Tension of the bezier curve between points
      bezierCurveTension      : 0.3,
      //Boolean - Whether to show a dot for each point
      pointDot                : false,
      //Number - Radius of each point dot in pixels
      pointDotRadius          : 4,
      //Number - Pixel width of point dot stroke
      pointDotStrokeWidth     : 1,
      //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
      pointHitDetectionRadius : 20,
      //Boolean - Whether to show a stroke for datasets
      datasetStroke           : true,
      //Number - Pixel width of dataset stroke
      datasetStrokeWidth      : 2,
      //Boolean - Whether to fill the dataset with a color
      datasetFill             : true,
      //String - A legend template
      legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].lineColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
      //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio     : true,
      //Boolean - whether to make the chart responsive to window resizing
      responsive              : true
    }

    //Create the line chart
    areaChart.Line(areaChartData, areaChartOptions)

    //-------------
    //- LINE CHART -
    //--------------
    var lineChartCanvas          = $('#lineChartbeasiswa').get(0).getContext('2d')
    var lineChart                = new Chart(lineChartCanvas)
    var lineChartOptions         = areaChartOptions
    lineChartOptions.datasetFill = false
    lineChart.Line(areaChartData, lineChartOptions)

    //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
   

    barChartOptions.datasetFill = false
    barChart.Bar(barChartData, barChartOptions)
  })
</script>
</body>