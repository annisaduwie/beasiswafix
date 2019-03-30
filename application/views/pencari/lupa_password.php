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

<section class="slider d-flex align-items-center">
<div class="login-form">
       <form action="<?php echo site_url('Pencari/lupa_pass'); ?>" method="post">
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

        <div class="form-group">
            <p class="login-box-msg">Masukkan email untuk mengatur ulang kata sandi Anda :</p>
    
            <input type="email" class="form-control" name="email" placeholder="Masukkan Email" autofocus required oninvalid="this.setCustomValidity('Email tidak boleh kosong')" oninput="setCustomValidity('')">
        </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn1 btn-block">Kirim</button>
        </div>
              
      </form>
     
    </div>
    <!-- /.login-box-body -->
</section>
  <!-- /.login-box -->
  <!--============================= FOOTER =============================-->
<footer class="main-block dark-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="copyright">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          <p>Copyright &copy; 2018 E-Beasiswa</p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </div>
      </div>
    </div>
  </div>
</footer>
<!--//END FOOTER -->
  <script type="text/javascript">


    </script>
</body>
</html>
