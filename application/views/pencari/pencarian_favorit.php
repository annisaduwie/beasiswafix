<?php
$this->load->view('pencari/profilpencari');?>

<div class="col-md-9">

<div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Halaman Favorit</h3>
          </div>
  
            <!-- /.box-header -->
            <div class="box-body">
              <ul class="products-list product-list-in-box">
                <?php foreach ($list_favorit as $value){ ?>
                <li class="item">
                  <div class="product-img">
                  
                  <img style="width: 200px; height:150px; padding-right: 10px;" src="<?php echo base_url('universitas/'.$value->gambar_universitas);?>" alt="User profile picture">

                  </div>
                  <div class="product-info">

                    <a href="javascript:void(0)" class="product-title"><?php echo $value->nama_universitas; ?></a>

                    <a data-popup="tooltip" title="Hapus dari Favorit" data-placement="top" href="<?php echo site_url('PencarianC/hapus_favorit/'.$value->id_pencarian_favorit);?>" onclick="return confirm('Apakah anda yakin ingin menghapus program studi ?')" ><i class="fa fa-times pull-right" ></i></a>
                    
                    <span class="product-description">
                          26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                        </span>
                  </div>
                </li>
                <?php } ?>
                <!-- /.item -->

                



              </ul>
              <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->

              </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
  </body>

  <footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
  reserved.
</footer>