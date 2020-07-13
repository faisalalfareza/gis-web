<!DOCTYPE html>
<html lang="en">
  <?php 
    include "content/header-references.php"; 
    include "server/connection.php";

    $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
    mysqli_select_db($dbConn, $dbName);
  ?>

  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	    
    <?php include "content/global-header.php"; ?> 

    <section class="ftco-section contact-section ftco-no-pb" id="contact-section">
      <div class="container">
      	<div class="row justify-content-center">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <span class="subheading">Datasets</span>
            <h2 class="mb-4">Data tempat kursus di Kota Malang</h2>
            <p>Memperkenalkan MALANGKURSUS lebih mendetail dari sisi latar belakang, dan informasi seputar Pengembang.</p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 ftco-animate" style="text-align: justify !important">
            <h3>Filter berdasarkan Jenis Kursus</h3>
            <div class="tagcloud mb-5">
              <a href="datasets.php?kategori=kursus_mengemudi" class="tag-cloud-link active pt-3 pl-3 pr-3 pb-3">Kursus Mengemudi</a>
              <a href="datasets.php?kategori=kursus_musik" class="tag-cloud-link pt-3 pl-3 pr-3 pb-3">Kursus Musik</a>
              <a href="datasets.php?kategori=kursus_bola" class="tag-cloud-link pt-3 pl-3 pr-3 pb-3">Kursus Bola</a>
              <a href="datasets.php?kategori=kursus_akademik" class="tag-cloud-link pt-3 pl-3 pr-3 pb-3">Kursus Akademik</a>
              <a href="datasets.php?kategori=kursus_komputer" class="tag-cloud-link pt-3 pl-3 pr-3 pb-3">Kursus Komputer</a>
              <a href="datasets.php?kategori=kursus_menjahit" class="tag-cloud-link pt-3 pl-3 pr-3 pb-3">Kursus Menjahit</a>
            </div>

            <h3>Datasets - Kursus Mengemudi</h3>
            <table id="table_id" class="display" style="width: 100% !important">
              <thead>
                  <tr>
                      <th>Nama Kursus</th>
                      <th>Alamat</th>
                      <th>Latitude</th>
                      <th>Longitude</th>
                      <th>No. Telepon</th>
                      <th>Website</th>
                      <th>Tarif</th>
                      <th>Ket. Tarif</th>
                      <th>Fasilitas</th>
                      <th>Ket. Fasilitas</th>
                      <th>Jadwal</th>
                      <th>Ket. Jadwal</th>
                      <th>Operasional</th>
                      <th>Ket. Operasional</th>
                      <th>Kapasitas</th>
                      <th>Ket. Kapasitas</th>
                  </tr>
              </thead>
              <tbody>
                <?php
                  $sql = "SELECT * FROM kursus_mengemudi";
                  $result = mysqli_query($dbConn, $sql);
                  while ($row = mysqli_fetch_array($result)) {
                ?>
                  <tr>
                      <td><?=$row["nama"]?></td>
                      <td><?=$row["alamat"]?></td>
                      <td><?=$row["lat"]?></td>
                      <td><?=$row["long"]?></td>
                      <td><?=$row["no_telpon"]?></td>
                      <td><?=$row["website"]?></td>
                      <td><?=$row["tarif"]?></td>
                      <td><?=$row["keterangan_tarif"]?></td>
                      <td><?=$row["fasilitas"]?></td>
                      <td><?=$row["keterangan_fasilitas"]?></td>
                      <td><?=$row["jadwal"]?></td>
                      <td><?=$row["keterangan_jadwal"]?></td>
                      <td><?=$row["operasional"]?></td>
                      <td><?=$row["keterangan_operasional"]?></td>
                      <td><?=$row["kapasitas"]?></td>
                      <td><?=$row["keterangan_kapasitas"]?></td>
                  </tr>
                <?php
                  }
                ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section> <!-- .section -->
		
    <?php include "content/global-footer.php"; ?>  
    <?php include "content/loader.php"; ?>
    <?php include "content/footer-references.php"; ?>

    <script type="text/javascript">
      $(document).ready( function () {
        $('#table_id').DataTable({
          select: true,
          scrollY: '300px',
          scrollX: true,
          scrollCollapse: false
        });
      } );
    </script>
    
  </body>
</html>