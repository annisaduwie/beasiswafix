<?php
$this->load->view('pencari/profilpencari');?>

<div class="col-md-9">


          <div class="box">
            <div class="box-header">
              <h1 class="box-title">Data Pencari</h1>
            </div>
            
            <div class="box-body">
              
              <table id="univ" class="table table-bordered table-striped">
                <thead>
                <tr><center>
                  <th><center>No </center></th>
                  <th><center>Waktu Pencarian</center></th>
                  <th><center>Link</center></th>
                
                 
                </tr>
                </thead>
                  <tbody>
                 <?php $no=0; foreach ($pencarian as $value):  $no++; ?>
                      <tr>   
                        <td><?php echo $no; ?></td>
                        <td ><?php echo $value->waktu_pencarian;?></td>
                        <td ><?php echo $value->url_universitas;?></td>
                      </tr>
                       <?php  endforeach; ?>
                        

                     
                  </tbody>
               
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
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

