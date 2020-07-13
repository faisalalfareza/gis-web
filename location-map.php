<!DOCTYPE html>
<html lang="en">
    <?php 
      include "content/header-references.php"; 
      include "server/connection.php";
    
      $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
      mysqli_select_db($dbConn, $dbName);
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
                            <span class="subheading">Peta Lokasi</span>
                            <h2 class="mb-4" style="font-size: 34px; text-transform: capitalize;">Temukan Kursus Anda</h2>
                            <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                          </div>
                        </div>  

                        <div style="padding-bottom: 3rem">
                          <table>
                            <tr>
                              <td><img src="images/icon/circle (1).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Mengemudi</h3></td>

                              <td><img src="images/icon/circle (2).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Musik</h3></td>

                              <td><img src="images/icon/circle (3).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Bola</h3></td>
                            </tr>
                            <tr>
                              <td><img src="images/icon/circle (4).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Akademik</h3></td>

                              <td><img src="images/icon/circle (5).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Komputer</h3></td>

                              <td><img src="images/icon/circle (6).png" style="width: 1.5rem"></td>
                              <td style="padding: 0 15px;"><h3 style="margin: 1px;font-size: 0.9rem;font-weight: 700;font-family: Trebuchet MS;">Kursus Menjahit</h3></td>
                            </tr>
                          </table>
                        </div>
                        
                        <div class="row" style="padding-bottom: 1rem">
                          <div class="col-sm-6">
                            <div class="form-group">
                              <select name="kategori" id="kategori" class="selectpicker show-tick show-menu-arrow form-control" title="Kategori (Layer)"
                              data-live-search="true">
                                <option value="">Nothing Selected</option>
                                <?php
                                  $sql_kursus = "SELECT * FROM kursus";
                                  $result = mysqli_query($dbConn, $sql_kursus);
                                  while ($row = mysqli_fetch_array($result)) {
                                ?>
                                  <option value="<?=$row["nama_tabel"]?>" <?php if (isset($_GET["kategori"]) && $_GET["kategori"]==$row["nama_tabel"]) echo "selected";?> > <?=$row["label"]?> </option>
                                <?php 
                                  }
                                ?>
                              </select>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group">
                              <select name="nama" id="nama" class="selectpicker show-tick show-menu-arrow form-control" title="Tempat Kursus (Courses)" 
                              data-live-search="true" data-actions-box="true">
                              </select>
                            </div>
                          </div>
                        </div> 
                        <!-- <div class="row">
                          <div class="col-sm-12">
                            <div class="form-group">
                              <input type="text" name="keyword" class="form-control" placeholder="Cari Berdasarkan Keyword" value="<?= isset($_GET["keyword"]) ? $_GET["keyword"] : '' ?>">
                            </div>
                          </div>
                        </div> -->

                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group">
                              <label style="font-weight: bold;">Tipe Tarif</label> 
                              <!-- <select name="tarif" class="selectpicker show-tick show-menu-arrow form-control" title="Tarif Berdasarkan Tipe" 
                              data-live-search="true" data-actions-box="true">
                                  <option value="">Nothing Selected</option>
                                  <option value="Reguler" <?php if (isset($_GET["tarif"]) && $_GET["tarif"]=="Reguler") echo "selected";?>>Reguler</option>
                                  <option value="Paket" <?php if (isset($_GET["tarif"]) && $_GET["tarif"]=="Paket") echo "selected";?>>Paket</option>
                              </select> -->

                              <ul style="list-style-type: none;padding-left: 15px;">
                                <li>
                                  <input type="radio" name="tarif" 
                                  <?php if (isset($_GET["tarif"]) && $_GET["tarif"]=="Reguler") echo "checked";?> value="Reguler"> Reguler (Pembayaran Non-Paket)
                                </li>
                                <li>
                                  <input type="radio" name="tarif"
                                  <?php if (isset($_GET["tarif"]) && $_GET["tarif"]=="Paket") echo "checked";?> value="Paket"> Paket (Pembayaran Paket)
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group">
                              <label style="font-weight: bold;">Kapasitas</label>
                              <!-- <select name="kapasitas" class="selectpicker show-tick show-menu-arrow form-control" title="Model belajar kursus" 
                              data-live-search="true" data-actions-box="true">
                                  <option value="">Nothing Selected</option>  
                                  <option value="Privat" <?php if (isset($_GET["kapasitas"]) && $_GET["kapasitas"]=="Privat") echo "selected";?>>Privat</option>
                                  <option value="Kelas" <?php if (isset($_GET["kapasitas"]) && $_GET["kapasitas"]=="Kelas") echo "selected";?>>Kelas</option>
                              </select> -->

                              <ul style="list-style-type: none;padding-left: 15px;">
                                <li>
                                  <input type="radio" name="kapasitas" 
                                  <?php if (isset($_GET["kapasitas"]) && $_GET["kapasitas"]=="Privat") echo "checked";?> value="Privat"> Privat (Individu, Kelompok Kecil)
                                </li>
                                <li>
                                  <input type="radio" name="kapasitas"
                                  <?php if (isset($_GET["kapasitas"]) && $_GET["kapasitas"]=="Kelas") echo "checked";?> value="Kelas"> Kelas (Kelompok Besar)
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        
                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group">
                              <label style="font-weight: bold;">Operasional</label> 
                              <ul style="list-style-type: none;padding-left: 15px;">
                                <li>
                                  <input type="radio" name="operasional" 
                                  <?php if (isset($_GET["operasional"]) && $_GET["operasional"]=="Setiap Hari") echo "checked";?> value="Setiap Hari"> Setiap Hari (All Days)
                                </li>
                                <li>
                                  <input type="radio" name="operasional"
                                  <?php if (isset($_GET["operasional"]) && $_GET["operasional"]=="Hari Kerja") echo "checked";?> value="Hari Kerja"> Hari Kerja (Week Days)
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group">
                              <label style="font-weight: bold;">Jadwal</label>
                              <!-- <select name="jadwal" class="selectpicker show-tick show-menu-arrow form-control" title="Waktu kursus beroperasi" 
                              data-live-search="true" data-actions-box="true">
                                  <option value="">Nothing Selected</option>  
                                  <option value="Pagi" <?php if (isset($_GET["jadwal"]) && $_GET["jadwal"]=="Pagi") echo "selected";?>>Pagi (Morning)</option>
                                  <option value="Siang" <?php if (isset($_GET["jadwal"]) && $_GET["jadwal"]=="Siang") echo "selected";?>>Siang (Afternoon)</option>
                              </select> -->

                              <ul style="list-style-type: none;padding-left: 15px;">
                                <li>
                                  <input type="radio" name="jadwal"
                                  <?php if (isset($_GET["jadwal"]) && $_GET["jadwal"]=="Pagi") echo "checked";?> value="Pagi"> Dimulai Pagi (Morning Starts)
                                </li>
                                <li>
                                  <input type="radio" name="jadwal"
                                  <?php if (isset($_GET["jadwal"]) && $_GET["jadwal"]=="Siang") echo "checked";?> value="Siang"> Dimulai Lebih Siang (Afternoon Starts)
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>
                       
                        <div class="row">
                          <div class="col-sm-6">
                            <div class="form-group">
                              <label style="font-weight: bold;">Fasilitas</label>
                              <ul style="list-style-type: none;padding-left: 15px;">
                                <li>
                                  <input type="radio" name="fasilitas"
                                  <?php if (isset($_GET["fasilitas"]) && $_GET["fasilitas"]=="Ada") echo "checked";?> value="Ada"> Fasilitas Tambahan (Additional Facilities)
                                </li>
                                <li>
                                  <input type="radio" name="fasilitas"
                                  <?php if (isset($_GET["fasilitas"]) && $_GET["fasilitas"]=="Tidak Ada") echo "checked";?> value="Tidak Ada"> Fasilitas Umum (Normal Facilities)
                                </li>
                              </ul>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            
                          </div>
                        </div>

                        <div class="row" style="padding-top: 3rem">
                          <div class="col-sm-6">
                            <div class="form-group footer" style="text-align: center !important">
                              <a href="location-map.php" class="btn btn-white py-3 px-5" style="width: 100%">
                                Reset
                              </a>
                            </div>
                          </div>
                          <div class="col-sm-6">
                            <div class="form-group footer" style="text-align: center !important">
                              <button type="submit" class="btn btn-primary py-3 px-5" style="width: 100%">
                                Cari Kursus <span class="icon-long-arrow-right mr-2"></span>
                              </button>
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

        <?php include "content/location-map/map-initialize.php"; ?>  

        <script type="text/javascript">
          $(document).ready(function() {
            $('select#nama').prop('disabled', true);

            if (getQuery('kategori') != null) {
              var parameterValue = getQuery('kategori');
              getListKursusByCategory( parameterValue );
            }

            $('select#kategori').change(function() {
              var selectedProject = $("select#kategori").val();
              debugger
              if (selectedProject != "") {
                getListKursusByCategory( selectedProject );
              }
              else {
                var $select = $('select#nama');
                $select.find('option').remove();
                $select.prop('disabled', true);
                $select.selectpicker('refresh');
              }
            });

            function getListKursusByCategory(_variable) {
              $.ajax
                ({ 
                  url: 'server/onchange_dropdown_kursus.php',
                  data: { variable : _variable },
                  type: 'POST',
                  success: function(response)
                  {
                      var $select = $('select#nama');
                      $select.find('option').remove();

                      if (getQuery('nama') != null) {
                        var name = (getQuery('nama').indexOf('+') ? getQuery('nama').split('+').join(' ') : getQuery('nama'));
                        $.each(JSON.parse(response), function(key, value) {
                            $select.append('<option value="' + value + '" ' + (name == value ? "selected" : "") + '>' + value + '</option>'); 
                        });
                      }
                      else {
                        $.each(JSON.parse(response), function(key, value) {
                            $select.append('<option value="' + value + '" >' + value + '</option>'); 
                        });
                      }

                      $select.prop('disabled', false);
                      $select.selectpicker('refresh');
                  }
              });
            }

            function getQuery(q) {
              return (window.location.search.match(new RegExp('[?&]' + q + '=([^&]+)')) || [, null])[1];
            }
          });
        </script>
    </body>
</html>