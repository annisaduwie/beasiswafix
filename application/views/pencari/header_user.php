<?php
$this->load->view('pencari/head');
?>


<style type="text/css">
.pic{
  width: 40px;
  height: 40px;
  margin-bottom: 5px;
  margin-top: 5px;
}

</style>
<div class="dark-bg sticky-top">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <nav class="navbar navbar-expand-lg navbar-light">
          <a class="navbar-brand" href="<?php echo base_url('Awal')?>">E - Beasiswa</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-menu"></span>
            
          </button>

          <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">

            <ul class="navbar-nav navbar-right">
               <li class="nav-item">
                <?php if($this->session->userdata('logged_in') && $this->session->userdata('status') == "aktif"){?>
              <a class="nav-link" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>">Cari Beasiswa</a>
            <?php } else{?>
              <a class="nav-link" href="" data-toggle="modal" data-target="#myModalLogin" >Cari Beasiswa</a>
            <?php }?>
            
            </li>
              <!-- <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 Cari Jurusan
                 <span class="icon-arrow-down"></span>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                 <a class="dropdown-item" href="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>"  >Berdasarkan fakultas</a>
               </div>
             </li> -->
            <?php if ($this->session->userdata('logged_in') && $this->session->userdata('status') == "aktif"){ ?>
              <?php 
              $id_pencari = $this->session->userdata("id_pencari");
              $username=$this->db->query("SELECT username from pencari where id_pencari ='$id_pencari'")->row_array();
              ?>
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hai, <?php echo $username['username'];?>
                 <span class="icon-arrow-down"></span>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                 <a class="dropdown-item" href="<?php echo base_url('Pencari/tampil_data_pribadi');?>"  >Profil</a>
                 <a class="dropdown-item" href="<?php echo base_url('Pencari/edit_password');?>"  >Ubah Password</a>
                 <a href="<?php echo base_url('Pencari/logoutUser');?>" class="dropdown-item" >Keluar</a>
               </div>
             </li>

            <?php }else { ?>
             <li>
              <a href="<?php echo base_url('Login')?>" class="btn btn-outline top-btn">Masuk</a>
            </li>
          </ul>

        <?php }?>
      </div>
    </nav>
  </div>
</div>
</div>
</div>
<div class="modal fade" id="myModalLogin" >
                <div class="modal-dialog">
                          <div class="modal-content">
                              <div class="modal-header">
                                  <center>Perhatian</center>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                              </div>
                            <div class="modal-body">
                            <center><img style="width: 100px;height: 100px; margin-bottom: 20px;" src="<?php echo base_url('assets/images/infobeasiswa.png');""?>"></center>
                              <form method="POST" action="<?php echo base_url('Login');?>">
                                
                                 <center><p style="font-style: calibri; font-size: 14px; padding-bottom: 30px;"><b>Temukan berbagai informasi lengkap mengenai beasiswa dalam dan luar negeri, silahkan login terlebih dahulu</b></p>
                              
                                  <input type="submit" value="Login" name="Login" class="btn" style="width:80px; background-color: #3c8dbc; color:#fff;">
                                  
                              </form>
                            </div>
                        </div>
                      </div>
                    </div>
 