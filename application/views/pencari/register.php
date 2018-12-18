
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


    <div class="login-form">
        <form id="form" method="post" action='<?php echo base_url('regispencari/tambah_data')?>'>
            <h5 class="text-center" style="padding-bottom: 10px;">DAFTAR</h5><hr> 


            <?php 
            $data2=$this->session->flashdata('error');
            ?>
            <div class="form-group">
                <label>Nama </label>
                <input type="text" class="form-control" name="nama" value ="<?php echo set_value('nama') ?>"  placeholder="Masukkan nama" required oninvalid="this.setCustomValidity('Nama masih kosong')" oninput="setCustomValidity('')"><span class="text-red">* wajib diisi</span>
            </div>


     <!--    <div class="form-group has-feedback">
          <input type="password" class="form-control" id="no_identitas" name="no_identitas" placeholder="No Identitas">
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div> -->


      <div class="form-group">
        <label>Pilih Kategori</label>
        <div class="radio" id="myRadioGroup">

            <label class="radio-inline">
                <input type="radio" id="plj" name="tingkatan" value="Pelajar" checked="checked">  Pelajar </label>
                
                <label  class="radio-inline">        
                    <input type="radio" id="mhs" name="tingkatan" value="Mahasiswa">  Mahasiswa </label>

                </div>
            </div>

            <div class="form-group">
                <label>Username </label>
                <input type="text" class="form-control" name="username" value="<?php echo set_value('username') ?>" placeholder="Masukkan username" required oninvalid="this.setCustomValidity('Username masih kosong')" oninput="setCustomValidity('')"><span class="text-red">* wajib diisi</span>
            </div>

            <div class="form-group">
                <label>Password </label>
                <input type="password" class="form-control" name="password" value =""  placeholder="Masukkan password" required oninvalid="this.setCustomValidity('Password masih kosong')" oninput="setCustomValidity('')"><span class="text-red">* wajib diisi</span>
            </div>
            <div class="form-group">
                <label>Email </label>
                <input type="email" class="form-control" name="email" value=""<?php echo set_value('email') ?>"" placeholder="Masukkan email" required oninvalid="this.setCustomValidity('Email masih kosong')" oninput="setCustomValidity('')"><span class="text-danger"><?=$data2;?></span><span class="text-red">* wajib diisi</span>
            </div>

            <div class="form-group">
              <button type="submit" class="btn btn1 btn-block" id="butSave">Daftar</button>
          </div>
          <div class="form-group">
              <button type="submit" onclick="goBack()" class="btn btn-block" id="butSave">Batal</button>
          </div>
      </form>
  </div>

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
