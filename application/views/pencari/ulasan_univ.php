<!DOCTYPE html>
<html lang="en">
<head>
  <style>
  /* Set the size of the div element that contains the map */
  #map {
    height: 900px;  /* The height is 400 pixels */
    width: 100%;  /* The width is the width of the web page */
  }

  .keterangan{
    font-size: 15px;
  }
  .lab{
    font-size: 15px;
  }

  .rating {
    float:left;
}
.btn {
  border: none; /* Remove borders */
  color: white; /* Add a text color */
  padding: 14px 28px; /* Add some padding */
  cursor: pointer; /* Add a pointer cursor on mouse-over */
}
.info {background-color: #2196F3;} /* Blue */
.info:hover {background: #0b7dda;}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: '★ ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}


</style>
</head>


<body>

<?php
$this->load->view('pencari/header_user');
?>
  <section class="section purchase" data-stellar-background-ratio="0.5" style="padding-bottom:10px; background-color:#3c8dbc; ; -webkit-background-size: 100% 100%; -moz-background-size: cover; -o-background-size: cover; background-size: cover; padding-top: 10px;">

    <div class="container">
      <div class="row">
<?php
foreach($detail_univ as $detail){?>

   <!-- Box Comment -->
          <div class="box box-widget" style="padding: 30px;">
            <div class="box-header with-border">
              <div class="user-block">
                <center>
                  <span class="description" style="font-size: 18px; padding: 10px;">Tuliskan Ulasan Anda untuk Membantu Pencari Lainnya</span>
                <span class="username" style="font-size: 20px;"><?php echo $detail['nama_universitas'];?></a></span>
                
                
              </div>
              <!-- /.user-block -->
             
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- post text -->
             
             
            
             <div class="callout" style="background-color: #d2d6de;">
                 <h6 style="padding-bottom: 10px;"><i class="fa fa-warning" style="font-size: 30px;">&nbsp;Perhatian!</i></h6>

                <p>Berikut adalah pedoman penulisan ulasan </p>

                <ul>

                  <li>Tulis ulasan sesuai dengan penggalaman anda</li>
                  <li>Pergunakanlah kata-kata yang sopan</li>
                  <li>Ketika memberikan kritik tentang satu aspek dalam pengalaman, jangan menyudutkan dan menyebutkan nama individu.</li>
                  <li>Jangan menulis data yang bersifat pribadi</li>
                  <li>Ingat bahwa mahasiswa lainnya akan membaca ulasan ini - berikan saran yang membangun</li>
                  
                </ul>

              </div>

            </div>

             <form method="POST" action="<?php echo base_url('Pencari/tambah_ulasan');?>">
              <input type='hidden' name="id_univ" value="<?php echo $detail['id_universitas'];?>" >
               <input type='hidden' name="key_prodi" value="<?php echo $keyword_prodi;?>" >
                <input type='hidden' name="key_kategori" value="<?php echo $keyword_kategori;?>" >
                 <input type='hidden' name="key_tingkatan" value="<?php echo $keyword_tingkatan;?>">

                 

                 <br>
               <center><p style="font-style: calibri; font-size: 18px;">Ulasan Anda</p></center>
               <hr>

              <label for="exampleInputEmail1" class="lab">Beri peringkat pada universitas ini</label>
              <div class="form-group">
                
                    <!-- Rating Bar -->
              <fieldset class="rating">
                <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Rocks!">5 stars</label>
                <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4 stars</label>
                <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Meh">3 stars</label>
                <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Kinda bad">2 stars</label>
                <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1 star</label>
                </fieldset><br><br>
              </div>
               <div class="form-group">
                <label for="exampleInputJudul" class="lab">Judul</label>
                <input type="text" class="form-control" name="judul_ulasan" id="judul" placeholder="Tulis judul ulasan"> 
               </div>
              
               <div class="form-group">
               <label class="lab">Menurut pendapat anda, seperti apakah universitas ini ?</label>
                  <textarea class="form-control" rows="3" name="deskripsi_ulasan" placeholder="Ceritakan tentang pengalaman kuliah anda"></textarea>
               </div>
               <br>
              



               <center><button type="submit" class="btn info">Kirim Ulasan</button>
                </center>

             </form>



                </div>
              </div>
<?php
}
?>
 
            </div>
          </div>
</section>
</body>
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
   
  <!-- Script -->
  <script type='text/javascript'>

  $(document).ready(function(){

    // Initialize
    $('.ratingbar').rating({
        showCaption:false,
        showClear: false,
        size: 'sm'
      });

    // Rating change
      $('.ratingbar').on('rating:change', function(event, value, caption) {
        var id = this.id;
        var splitid = id.split('_');
        var postid = splitid[1];
        
        $.ajax({
          url: '<?= base_url() ?>index.php/posts/updateRating',
          type: 'post',
          data: {postid: postid, rating: value},
          success: function(response){
            $('#averagerating_'+postid).text(response);
          }
        });
    });
  });
  
  </script>