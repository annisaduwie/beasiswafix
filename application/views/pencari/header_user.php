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
              <a class="nav-link" href="<?php echo base_url('Pencarian_BeasiswaC/get_beasiswa');?>">Cari Beasiswa</a>
            </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 Cari Jurusan
                 <span class="icon-arrow-down"></span>
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                 <a class="dropdown-item" href="<?php echo base_url('PencarianC/tampil_pencarian_prodi');?>"  >Berdasarkan fakultas</a>
               </div>
             </li>
            <?php if ($this->session->userdata('logged_in')){ ?>

              <li class="nav-item dropdown">
                <a class="nav-link" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello, <?php  echo $this->session->userdata("username");?>
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
              <a href="<?php echo base_url('Login')?>" class="btn btn-outline-light top-btn">Masuk</a>
            </li>
          </ul>

        <?php }?>
      </div>
    </nav>
  </div>
</div>
</div>
</div>