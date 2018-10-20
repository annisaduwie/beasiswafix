 <?php
$this->load->view('pencari/section');
?>

<section class="main-block light-bg">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="styled-heading">
          <h3>Daftar program studi</h3>
        </div>
      </div>
    </div>



    <!-- /.box-header -->


    <div class="box-body" style="padding-bottom: 5px; ">

      <?php foreach ($fakultas as $key) {?>
        <ul class="products-list product-list-in-box" style="padding:5px;">

          <li class="item" style=" background-color: #252a33; height: 200px; padding: 70px; ">

           <center> <div class="product-info" >

            <a href="javascript:void(0)" class="product-title" style="color:#fff;">
              <?php echo $key->nama_fakultas;?>
            </a>

            <span class="product-description" ><br>

              <a href="javascript:void(0);" class="show_hide">Terdapat
               <?php 
               $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from fakultas, univ_fak, fak_prodi, prodi  where fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak = fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_fakultas='$key->nama_fakultas';");
               foreach ($list_jumlah->result() as $value){?>


                <?php echo $value->jumlah_prodi;?> Program Studi

                <?php }?></a>

              </span>

            </div></center>
          </li>

        </ul>
  <?php }?>
        <section id="box" class="reserve-block" style="padding-top:50px; padding-bottom: 50px; background-color: #f3f4f7">
          <div class="container">

            <div class="row">
              <div class="col-md-6">                       
                <?php 
                $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, univ_fak, fak_prodi, prodi  where fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak = fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_fakultas='$key->nama_fakultas';");
                foreach ($list_prodi->result() as $value){?>
                  <li class="prodi"><p><?php echo $value->nama_prodi;?></p>
                  </li>
                <?php }?>
              </div>
            </div>

              </div>     




       
      

      </div>
    </section>



  <section class="main-block light-bg">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="styled-heading">
          <h3>Daftar program studi</h3>
        </div>
      </div>
    </div>


    <!-- /.box-header -->


    <div class="box-body" style="padding-bottom: 5px; ">

      <?php foreach ($fakultas_univ as $key) {?>
        <ul class="products-list product-list-in-box" style="padding:5px;">

          <li class="item" style=" background-color: #252a33; height: 200px; padding: 70px; ">

           <center> <div class="product-info" >

            <a href="javascript:void(0)" class="product-title" style="color:#fff;">
              <?php echo $key->nama_fakultas;?>
            </a>

            <span class="product-description" ><br>

              <a href="javascript:void(0);" class="show_hide">Terdapat
               <?php 
               $list_jumlah = $this->db->query("SELECT count(distinct nama_prodi) as jumlah_prodi from universitas, fakultas, univ_fak, fak_prodi, prodi  where universitas.id_universitas=univ_fak.id_universitas AND fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak = fak_prodi.id_univ_fak AND fak_prodi.id_fak_prodi=prodi.id_fak_prodi AND nama_fakultas='$key->nama_fakultas';");
               foreach ($list_jumlah->result() as $value){?>


                <?php echo $value->jumlah_prodi;?> Program Studi

                <?php }?>
                  
                </a>

              </span>

            </div></center>
          </li>


        </ul>
  <?php }?>
        <section id="box" class="reserve-block" style="padding-top:50px; padding-bottom: 50px; background-color: #f3f4f7">
          <div class="container">

            <div class="row">
              <div class="col-md-6">                       
                <?php 
                $list_prodi = $this->db->query("SELECT distinct nama_prodi from fakultas, univ_fak, fak_prodi, prodi  where fakultas.id_univ_fak = univ_fak.id_univ_fak AND univ_fak.id_univ_fak = fak_prodi.id_univ_fak AND fak_prodi.id_prodi=prodi.id_prodi AND nama_fakultas='$key->nama_fakultas';");
                foreach ($list_prodi->result() as $value){?>
                  <li class="prodi"><p><?php echo $value->nama_prodi;?></p>
                  </li>
                <?php }?>
              </div>
            </div>

              </div>     




       
      

      </div>
    </section>








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
    <!--//END FEATURED PLACES -->
  </div>


    <!--============================= FOOTER =============================-->
    <footer class="main-block dark-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright">
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              <p>Copyright &copy; 2018 Listing. All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              <ul>
                <li><a href="#"><span class="ti-facebook"></span></a></li>
                <li><a href="#"><span class="ti-twitter-alt"></span></a></li>
                <li><a href="#"><span class="ti-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!--//END FOOTER -->




    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!-- Magnific popup JS -->
    <script src="assets/js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="assets/js/swiper.min.js"></script>
    <script>
      var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
      });
    </script>
    <script>
      if ($('.image-link').length) {
        $('.image-link').magnificPopup({
          type: 'image',
          gallery: {
            enabled: true
          }
        });
      }
      if ($('.image-link2').length) {
        $('.image-link2').magnificPopup({
          type: 'image',
          gallery: {
            enabled: true
          }
        });
      }
    </script>



    <script type="text/javascript" src="<?php echo base_url();?>'assets/js/jquery-1.11.3.js'"></script>
    <script type="text/javascript">
    var x = document.getElementById("show_hide");
    var txt = document.getElementById("box");;
    var i;
    for (i = 0; i < x.length; i++) {
        txt = txt + "\n" + x.options[i].text;
    }
    
$("#box").hide();
        $(".show_hide").show();

        $('.show_hide').click(function(){
          $("#box").slideToggle();
          $(".item").each(function(){

          });                                                      
        });
}







      $(document).ready(function(){
        

      });
    </script>

<script>
jQuery(function()
{   
  // function untuk mengambil semua data
  function getAll()
  {
    $.ajax({
      url: 'PencarianC/tampil_pencarian_prodi',
      data: 'action=show-all',
      cache: false,
      success: function(response){
        // jika berhasil 
        $("#showProdi").html(response);
      }
    });     
  }
  
  getAll(); // load ketika document ready

  // ketika ada event change
  $("#filterUniv").change(function()
  {       
    var id = $(this).find(":selected").val();
    var dataString = 'action='+ id;
        
    $.ajax({
      url: 'PencarianC/tampil_pencarian_prodi',
      data: dataString,
      cache: false,
      success: function(response){
        // jika berhasil 
        $("#showProdi").html(response);
      } 
    });
  })
});

</script>
  </body>
  </html>


