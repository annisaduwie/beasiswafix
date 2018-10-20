     <div class="dark-bg sticky-top">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light">
              <a class="navbar-brand" href="<?php echo base_url('Awal
              ')?>">E - Beasiswa</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-menu"></span>

              </button>
              <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                <ul class="navbar-nav navbar-right">

                  <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Cari Jurusan
                      <span class="icon-arrow-down"></span>
                    </a>
                    <ul class="nav navbar-nav">
                      <li class="dropdown user user-menu">
                       <ul class="dropdown-menu">

                        <!-- Menu Footer-->
                        <li class="user-footer">

                          <div class="pull-left">
                            <a href="" class="">Berdasarkan program studi</a>
                          </div>
                        </li>
                        <li class="user-footer">
                          <div class="pull-left">
                            <a href="#" class="">Berdasarkan asal tujuan</a>
                          </div>
                        </li>
                        <li class="user-footer">
                          <div class="pull-left">
                            <a href="#" class="">Berdasarkan asal universitas</a>
                          </div>
                        </li>
                      </ul>
                    </li>

                  </ul>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="<?php echo base_url('Awal/detailpencarian')?>">Tentang Kami</a>
                </li>
                  <?php if ($this->session->userdata('logged_in')){ ?>
                </ul>
                <div class="navbar-custom-menu">

                <div data-toggle="dropdown" class="dropdown-toggle" style="padding-left: 20px;"><a href="#">Hello, <?php  echo $this->session->userdata("username");?>
              </a></div>


              <ul class="nav navbar-nav">
                <li class="dropdown user user-menu">
                 <ul class="dropdown-menu">

                  <!-- Menu Footer-->
                  <li class="user-footer">

                    <div class="pull-left">
                      <a href="<?php echo base_url('Pencari/get_nama_pencari');?>" class="">Profil</a>
                    </div>
                  </li>
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="<?php echo base_url('Pencari/logoutUser');?>" class="">Keluar</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
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
















