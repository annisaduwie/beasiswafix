<?php
$this->load->view('pencari/header_user');
?> 

 <style type="text/css">
  .login-form {
    width: 400px;
      margin: 50px auto;

  }
    .login-form form {

        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 20px;
        padding-top: 35px;

      margin-bottom: 8px;

    }
    .login-form h2 {
        margin: 0 0 15px;


    }
    .pic{
        width: 80px;
        height: 80px;
        margin-bottom: 10px;

    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn1 {
    background: #3c8dbc;   
    color: #fff;     
        font-size: 15px;
        font-weight: bold;
    }
   
</style>

<body class="hold-transition login-page">

<section class="slider d-flex align-items-center">
<div class="login-box">
  <div class="login-logo">
 
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Masuk untuk melakukan pencarian beasiswa</p>
     <?php 
        $data=$this->session->flashdata('sukses');
        if($data!=""){ ?>
                            <div class="alert alert-success"><strong>Sukses! </strong> <?=$data;?></div>
                            <?php } ?>
                            <?php 
                            $data2=$this->session->flashdata('error');
                            if($data2!=""){ ?>
                            <div class="alert alert-danger"><strong> Error! </strong> <?=$data2;?></div>
                            <?php } ?>

    <form action="<?php echo site_url('Login/signin'); ?>" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" name="username"  placeholder="Username / Email" autofocus required oninvalid="this.setCustomValidity('Username/Email tidak boleh kosong')" oninput="setCustomValidity('')">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" placeholder="Password" required oninvalid="this.setCustomValidity('Password tidak boleh kosong')" oninput="setCustomValidity('')">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group">
            <button type="submit" class="btn btn1 btn-block">Masuk</button>
        </div>
    </form>

        <div class="clearfix">
            <label class="pull-left checkbox-inline">Tidak punya akun ?  </label>
            <a href="regispencari" class="pull-left">&ensp;Daftar</a>
        </div> 
        <div class="clearfix">
            <a href="<?php echo base_url('Pencari/halaman_lupa_password');?>" class="pull-left">Lupa password</a>
        </div> 

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
</section>
</body>

<!--============================= FOOTER =============================-->

<!--//END FOOTER -->