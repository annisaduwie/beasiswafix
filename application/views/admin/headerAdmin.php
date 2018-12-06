<?php
$this->load->view('admin/headAdmin');
?>
 
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>E</b>Beasiswa</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>E - </b>Beasiswa</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">


<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $this->session->userdata['username'];?><span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="<?php echo base_url('AdminC/logoutAdmin');?>" class="">Keluar</a></li>
                <!-- <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li> -->
              </ul>
            </li>










        
        </ul>
      </div>
    </nav>
  </header>

  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
         <img src="<?php echo base_url('assets/images/user.png')?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info"><br>
          <p><?php echo $this->session->userdata['username'];?></p>
          
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="<?php echo site_url('AdminC/get_dashboard');?>">
            <span>Dashboard</span>
          </a>
        </li>
        <li>
          <a href="<?php echo site_url('AdminC/get_pencari');?>">
            <span>Pencari</span>
          </a>
        </li>
        <li>
          <a href="<?php echo site_url('AdminC/get_konsultasi');?>">
            <span>Kotak masuk</span>
          </a>
        </li>
        <li >
            <a href="<?php echo base_url('AdminC/get_universitas');?>">
            <span>Universitas</span>
          </a>
        </li>

         <li >
            <a href="<?php echo base_url('AdminC/get_beasiswa_umum');?>">
            <span>Beasiswa</span>
          </a>
        </li>

       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <script>
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

<!--  -->