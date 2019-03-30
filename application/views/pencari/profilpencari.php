<!DOCTYPE html>
<html>
<head>


</head>
<style>
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5px auto; /* 15% from the top and centered */
  padding: 5px;
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 18px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}
</style>

<?php
$this->load->view('pencari/header_user');
?>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<body class="hold-transition sidebar-mini">


  <!-- Main content -->
  <section class="content">

    <div class="row">
      <div class="col-md-3">

        <!-- Profile Image -->
        <div class="box box-primary">
          <div class="box-body box-profile">
            <br>
            <center>
              <?php
              if( $nama_pencari['profil_pic'] == NULL){ ?>
                <img class="profile-user-img img-responsive img-circle" style="height:150px; width:150px;"src="<?php echo base_url('assets/images/user2.png');?>" alt="User profile picture"></center>
              <?php }else 
              { 
                ?>
                  <img class="profile-user-img img-responsive img-circle" src="<?php echo base_url('fileUpload/'.$nama_pencari['profil_pic']);?>" alt="User profile picture"></center>
              <?php } ?>
            
            <h3 class="profile-username text-center"><?php echo $nama_pencari['nama']; ?></h3>
            <p class="text-muted text-center"><?php echo $nama_pencari['tingkatan']; ?></p>



            <a class="btn btn-primary btn-block"  style="color:#fff;" id="myBtn"><b>Unggah Foto</b></a>



            <!-- The Modal -->
            <div id="myModal" class="modal">

             <div class="modal-content">
              
              <div class="modal-body">
                <?php echo form_open_multipart('Pencari/upload_foto');?> 

                 <?php if ($nama_pencari['profil_pic'] == NULL){ ?>

                   <center><img src="<?php echo base_url('assets/images/no_pic.jpg');?>" id="gambar_nodin" height="180" width="200" alt="Preview Gambar" /></center>

                <?php } else {?>
                    <center><img  height="180" width="200" src="<?php echo base_url('fileUpload/'.$nama_pencari['profil_pic']);?>"></center>
                <?php } ?>
                 <div class="form-group">
                  <label>Silahkan pilih foto</label>
                  <input type="hidden" id="id_pencari" name="id_pencari" value="<?php echo $nama_pencari['id_pencari']; ?>"><br>
                  <input type="file" id="pic" name="pic">
                </div>
                <div class="form-group">
                  <p class="text-red">*Ukuran gambar maksimal 3 mb</p>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
                <input type="submit" value="Unggah" class="btn btn-primary">
              </div>
              <?php echo form_close(); ?> 
              <!-- </form> -->
            </div>


          </div>





        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->

      <!-- About Me Box -->
      <div class="box box-primary">

        <!-- /.box-header -->
        <div class="box-body">


          <a href="<?php echo base_url('Pencari/get_nama_pencari');?>">
            <span>Profil</span>

          </a>
          <hr>
          <a href="<?php echo base_url('Pencari/tampil_favorit');?>">
            <span>Favorit</span>

          </a>
          <hr>
          <a href="<?php echo base_url('Pencari/tampil_pencarian_tersimpan');?>">
            <span>Riwayat Pencarian Jurusan</span>
          </a>
          <hr>
          <a href="<?php echo base_url('Pencari/tampil_pencarian_beasiswa_tersimpan');?>">
            <span>Riwayat Pencarian Beasiswa</span>
          </a>
          <hr>
          <a href="<?php echo base_url('Pencari/tampil_konsultasi');?>">
            <span>Konsultasi</span>
          </a>
          <hr>


        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->






<!-- jQuery 3 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url();?>AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url();?>AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>AdminLTE/dist/js/demo.js"></script>
<!-- page script -->
<script>

  function bacaGambar(input) {
   if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
          $('#gambar_nodin').attr('src', e.target.result);
      }
 
      reader.readAsDataURL(input.files[0]);
   }
}
$("#pic").change(function(){
   bacaGambar(this);
});

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
  /** add active class and stay opened when selected */
  var url = window.location;

    // for sidebar menu entirely but not cover treeview
    $('ul.sidebar-menu a').filter(function() {
     return this.href == url;
   }).parent().addClass('active');

    // for treeview
    $('ul.treeview-menu a').filter(function() {
     return this.href == url;
   }).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active');




    // Get the modal
    var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var span1 = document.getElementsByClassName("btn btn-default pull-left")[0];
// When the user clicks on the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
span1.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

<!--  -->

</body>
</html>
