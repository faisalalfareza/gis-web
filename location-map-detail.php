<!DOCTYPE html>
<html lang="en">
    <?php 
      include "content/header-references.php"; 
      include "server/connection.php";
    
      $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
      mysqli_select_db($dbConn, $dbName);

      $tipe_kursus = $_GET["kategori"];
      $id_kursus = $_GET["id"];

      $sql = "SELECT * FROM $tipe_kursus WHERE id='$id_kursus'";
      $result = mysqli_query($dbConn, $sql);
      while ($row = mysqli_fetch_array($result)) {
    ?>

    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
        <?php include "content/location-map/map-references.php"; ?>        
          <?php include "content/global-header.php"; ?>  
              <section class="ftco-section contact-section ftco-no-pb" id="contact-section" style="padding: 5em 0 0 0;">
                <div class="container" style="max-width: inherit;padding: 0">
                  <div class="row no-gutters block-9">
                    <div class="col-md-6 order-md-last d-flex">

                      <form method="GET" action="<?=htmlspecialchars($_SERVER["PHP_SELF"]);?>" class="bg-light p-5 contact-form" style="text-align: -webkit-center;">
                        <div class="row justify-content-start pb-3">
                          <div class="col-md-12 heading-section ftco-animate fadeInUp ftco-animated">
                            <span class="subheading"><?=$row['kategori']?></span>
                            <h2 class="mb-4" style="font-size: 34px; text-transform: capitalize;"><?=$row['nama']?></h2>
                            <p><?=$row['alamat']?></p>
                          </div>
                        </div>  
                        <div class="row">
                          <div class="col-sm-12">
                            <table class="detail" style="font-size: 14px;color: black;">
                              <tr><th style="padding:8px">Website</th><td style="padding:8px"><?=$row['website']?></td></tr>
                              <tr><th style="padding:8px">Phone Number</th><td style="padding:8px"><?=$row['no_telpon']?></td></tr>
                              <tr>
                                <th style="padding:8px">Tarif (<?=$row['tarif']?>)</th>
                                <td style="padding:8px">
                                  <div class="tag-widget post-tag-container mt-4">
                                    <div class="tagcloud">
                                      <?php 
                                        $array_tarif = explode(";", $row['keterangan_tarif']);
                                        foreach ($array_tarif as $tarif) {
                                          if ($tarif != "") {
                                          ?>
                                            <a class="tag-cloud-link"><?=$tarif?></a>
                                          <?php
                                          }
                                        }
                                      ?>
                                    </div>
                                  </div>
                                </td>
                              </tr>
                              <tr>
                                <th style="padding:8px">Fasilitas (<?=$row['fasilitas']?>)</th>
                                <td style="padding:8px"><?=$row['keterangan_fasilitas']?></td>
                              </tr>
                              <tr><th style="padding:8px">Operasional (<?=$row['operasional']?>)</th><td style="padding:8px"><?=$row['keterangan_operasional']?></td></tr>
                              <tr><th style="padding:8px">Jadwal</th><td style="padding:8px"><?=$row['jadwal']?></td></tr>
                              <tr><th style="padding:8px">Kapasitas</th><td style="padding:8px">(<?=$row['kapasitas']?>) <?=$row['keterangan_kapasitas']?></td></tr>
                            </table>
                          </div>
                        </div>
                        <div class="row" style="padding-top: 3rem">
                          <div class="col-sm-12">
                            <div class="form-group footer" style="text-align: center !important">
                              <a href="location-map.php" class="btn btn-white py-3 px-5">
                              <span class="icon-long-arrow-left mr-2"></span> Back
                              </a>
                            </div>
                          </div>
                        </div>
                      </form>

                    </div>

                    <div class="col-md-6 d-flex">
                      <div id="map" class="bg-white"></div>
                    </div>
                  </div>
                </div>
              </section>
          <?php include "content/global-footer.php"; ?>  
        <?php include "content/loader.php"; ?>
        <?php include "content/footer-references.php"; ?>

        <?php include "content/location-map/map-detail-initialize.php"; ?>  
    </body>

    <?php
      }
    ?>
</html>