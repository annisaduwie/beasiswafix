
<?php
$this->load->view('pencari/header_user');
?> 

<style type="text/css">
.login-form {
    width: 400px;
    margin: 50px auto;
    background: ##3c8dbc;

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
</head>
<body>

<body class="hold-transition login-page">

<section class="slider d-flex align-items-center">
<div class="login-box">
  <div class="login-logo">
 
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Daftar untuk melakukan pencarian beasiswa</p>

            <?php 
            $data2=$this->session->flashdata('error');
            ?>

    <form id="form" method="post" action='<?php echo base_url('regispencari/tambah_data')?>'>


      <div class="form-group has-feedback">
         <label>Nama<span class="text-red">*</span></label>
         <input type="text" class="form-control" name="nama" value ="<?php echo set_value('nama') ?>" required oninvalid="this.setCustomValidity('Nama masih kosong')" oninput="setCustomValidity('')">
      </div>

      <div class="form-group has-feedback">
         <label>Pilih Kategori<span class="text-red">*</span></label>
        <div class="radio" id="myRadioGroup">

            <label class="radio-inline">
                <input type="radio" id="plj" name="tingkatan" value="Pelajar" checked="checked">  Pelajar </label>
                
                <label  class="radio-inline">        
                    <input type="radio" id="mhs" name="tingkatan" value="Mahasiswa">  Mahasiswa </label>

                </div>
      </div>

        <div class="form-group has-feedback">
        <label>Username<span class="text-red">*</span></label>
        <input type="text" class="form-control" name="username" required oninvalid="this.setCustomValidity('Username masih kosong')" oninput="setCustomValidity('')">
        </div>

        <div class="form-group has-feedback">
        <label>Password<span class="text-red">*</span></label>
        <input type="password" class="form-control" name="password" required oninvalid="this.setCustomValidity('Password masih kosong')" oninput="setCustomValidity('')">
        </div>

        <div class="form-group has-feedback">
        <label>Email<span class="text-red">*</span></label>
         <input type="email" class="form-control" name="email" required oninvalid="this.setCustomValidity('Email masih kosong')" oninput="setCustomValidity('')">
            </div>

    
        <div class="form-group">
              <button type="submit" class="btn btn1 btn-block" id="butSave">Daftar</button>
          </div>
          <div class="form-group">
              <button type="submit" onclick="goBack()" class="btn btn-block" id="butSave">Batal</button>
          </div>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
</section>

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
</body>



<script type="text/javascript">
    function goBack() {
  window.history.back()
}



    // $(document).ready(function(){
    //     reload();
    // });
    // var myTable;

    //  function tambah_data() {
    //     // $('#butSave').text("Menyimpan...");
    //     $('#butSave').attr('disabled',true);
    //     $.ajax({
    //         url : "<?php echo base_url("regispencari/index_post"); ?>",
    //         type: "POST",
    //         data: $('#form').serialize(),
    //         dataType: "JSON",
    //         success: function(data)
    //         {
    //             // to refresh, exactly for datatable integration
    //             location.reload();
    //             if (data.status == true) {
    //                 alert("Akun berhasil dibuat. Silahkan verifikasi akun dari email !");
    //                 reload();
                    
                    
    //                // $('#myModal').modal('hide');
    //                 $('#form')[0].reset();
    //                 // $('#butSave').text("Simpan");
    //                 $('#butSave').attr('disabled',false);
    //             }else{
    //                 alert("Isian kurang lengkap !");
    //             // $('#butSave').text("Simpan");
    //             $('#butSave').attr('disabled',false); 

    //             }
    //         },
    //              error: function (jqXHR, textStatus, errorThrown)
    //         // {
    //         //     alert("Isian kurang lengkap !");
    //         //     // $('#butSave').text("Simpan");
    //         //     $('#butSave').attr('disabled',false); 
    //         // }
                
            
           
    //     });
            
    // }
</script> 
</body>
</html>
