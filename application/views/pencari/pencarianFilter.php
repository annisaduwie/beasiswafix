<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dropdown change with AJAX</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="https://www.onphpid.com/">
            ONPHPID Tutorial
          </a>
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-default">
            <div class="panel-body">
              <div class="col-md-3">
                <select class="form-control" id="getProduct">
                  <option value="show-all" selected="selected">Produk</option>
                  <!-- Menampilkan data dari tabel merk untuk dijadikan list dropdown -->
                  <?php
                    require_once 'Config.php';
                    
                    $stmt = $db->prepare('SELECT distinct nama_universitas from universitas');
                    $stmt->execute();
                  ?>
                  <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)): ?>
                        <?php extract($row); ?>
                        <option value="<?php echo $id; ?>"><?php echo $nama_merk; ?></option>
                  <?php endwhile; ?>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="show-product">
        <!-- data akan di tampilkan di sini -->
      </div>
    </div>
    
  </body>
</html>