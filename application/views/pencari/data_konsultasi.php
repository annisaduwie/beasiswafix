<?php
$this->load->view('pencari/profilpencari');?>
<head>
  </head>
  
  <div class="col-md-9">
 <div class="box box-primary">
               
           
     <div class="box-header with-border">
      <h3 class="box-title">Daftar Konsultasi</h3>

    </div>

      <!-- Main content -->
      <section class="content">
        

            <div class="row">
              <div class="col-md-12">
                <?php
                $this->load->helper('form');
                $error = $this->session->flashdata('error');
                if($error)
                {
                  ?>
                  <div class="alert alert-danger alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fa fa-exclamation-triangle">&ensp;
                    <?php echo $this->session->flashdata('error'); ?>
                    </i>                 
                  </div>
                <?php } ?>
                <?php  
                $success = $this->session->flashdata('success');
                if($success)
                {
                  ?>
                  <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fa fa-check">&ensp;
                    <?php echo $this->session->flashdata('success'); ?>
                  </i>
                  </div>
                <?php } ?>

              </div>
            </div>

                <div class="row">
                  <div class="col-md-12">
              <?php
              if($this->session->userdata('logged_in')){

              $id_pencari = $this->session->userdata('id_pencari');

              $query= $this->db->query("SELECT * from pencari, pencarian, detail_pencarian, ulasan WHERE pencari.id_pencari=pencarian.id_pencari AND pencarian.id_pencarian=detail_pencarian.id_pencarian AND detail_pencarian.id_detail_pencarian = ulasan.id_detail_pencarian AND pencari.id_pencari='$id_pencari' GROUP BY pencari.id_pencari order by post_ulasan")->num_rows();
              ?>

              <?php if ($query < 1){ ?>

                <div class="text-center" style="font-size: 18px;">Anda belum memberi ulasan</div><br>

              <?php }else{?>

                     <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>No </th>
                      <th>Judul Ulasan</th>
                      <th>Tanggal Tulis</th>
                      <th>Status</th>
                      <th>Keterangan</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                   <?php $no=0; foreach ($data_ulasan as $value): $no++; ?>
                   <tr>   
                    <td><?php echo $no; ?></td>
                    <!-- <td ><center><?php echo $value->id_universitas; ?></center></td> -->
                    <td ><?php echo $value->judul_ulasan; ?></td>
                    <td ><?php echo $value->post_ulasan; ?></td>
                    <td>
                    <?php if($value->status_publikasi == 'Belum disetujui'){?>
                          <span class="label label-warning" style="font-size: 12px; border-radius: 5px; padding: 5px;"><?php echo $value->status_publikasi;?></span>
                          <?php }elseif($value->status_publikasi == 'Sudah disetujui'){?>
                            <span class="label label-success" style="font-size: 12px; border-radius: 5px; padding: 5px;"><?php echo $value->status_publikasi;?></span>
                          <?php }elseif($value->status_publikasi == 'Tidak disetujui'){?>
                            <span class="label label-danger" style="font-size: 12px; border-radius: 5px; padding: 5px;"><?php echo $value->status_publikasi;?></span>
                          <?php }?>
                        </td>
                    <td><div style="color:orange"><?php if($value->status_publikasi == 'Belum disetujui'){?>
                      Menunggu persetujuan dari admin</div>
                    <?php }elseif($value->status_publikasi == 'Sudah disetujui'){?>
                      <div style="color:green">Ulasan anda sudah dipublikasikan</div>
                    <?php }elseif($value->status_publikasi == 'Tidak disetujui' ){?>
                    <div style="color:red">Mohon periksa kembali ulasan anda dan lakukan edit ulang, ulasan harus sesuai dengan pedoman penulisan</div>
                    <?php }?>
                    </td>
                    <td>
                      <a class="btn btn-info btn-xs tooltips" href="<?php echo base_url('Pencari/get_tampil_detail_ulasan/'.$value->id_ulasan);?>">
                          <span data-toogle="tooltip" title="Lihat ulasan"><i class="fa fa-search-plus" style="color: #fff"></i></span>
                        </a>

                    </td>
                    </tr>
                    <?php  endforeach; ?>
                  </tbody>
                </table>

              <?php }?>
              <?php }?>

                  </div>
                </div>
              </section>
              </div>
            </div>

         

      <script>

      $(function () {
      $('#example1').DataTable()
      $('#example2').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      })
    })
  </script>
                