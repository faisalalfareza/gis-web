<?php
    include "server/connection.php";
    $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
    mysqli_select_db($dbConn, $dbName);
?>

<script type='text/javascript'>	
    /* 
     * Start: Initialize Map Server Url
     */
        var	googleTerrain = new L.Google('TERRAIN');
        var	googleRoadmap = new L.Google('ROADMAP');
        var	googleSatellite = new L.Google('SATELLITE');
        var	googleHybrid = new L.Google('HYBRID');
        
        var cloudmade = new L.TileLayer('http://{s}.tile.cloudmade.com/4c09f91134dc40008537e4bbdf6b606e/22677/256/{z}/{x}/{y}.png');
        var mpn = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');
        var	qst = new L.TileLayer('http://otile1.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png');
        var transport = new L.TileLayer('https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var pioneer = new L.TileLayer('https://tile.thunderforest.com/pioneer/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var OpenCycleMap = new L.TileLayer('https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var Landscape = new L.TileLayer('https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var Outdoors = new L.TileLayer('https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var TransportDark = new L.TileLayer('https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var SpinalMap = new L.TileLayer('https://tile.thunderforest.com/spinal-map/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var MobileAtlas = new L.TileLayer('https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var Neighbourhood = new L.TileLayer('https://tile.thunderforest.com/neighbourhood/{z}/{x}/{y}.png?apikey=0bf83d31af474e0d96b42db949d37445');
        var mpn = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');
        var stamentoner = new L.StamenTileLayer('toner');
        var stamenterrain = new L.StamenTileLayer('terrain');
        var stamenwatercolor = new L.StamenTileLayer('watercolor');
        
        // var bing_aerial = new L.BingLayer('AqTGBsziZHIJYYxgivLBf0hVdrAk9mWO5cQcb8Yux8sW5M8c8opEC2lZqKR1ZZXf', {'type' : 'Aerial'});
        // var bing_road = new L.BingLayer('AqTGBsziZHIJYYxgivLBf0hVdrAk9mWO5cQcb8Yux8sW5M8c8opEC2lZqKR1ZZXf', {'type' : 'Road'});
        var bing_canvasDark = new L.BingLayer('AkbpVsSQLiJvmuk5qVTSKP_fsquTZanjHvN5pGS61GY0vqjg2Wp0vYefSgNZjrVO', {'type' : 'CanvasDark'});
    /* 
     * End: Initialize Map Server Url
     */

    /* 
     * Start: Initialize Layer/Category 
     */
        var ksMengemudiLayer = new L.LayerGroup();
        var ksMengemudiIco = L.icon({
            iconUrl: 'images/icon/circle (1).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksMengemudi = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_mengemudi") 
                if (isset($_GET["nama"])) array_push($where_ksMengemudi, " nama='$_GET[nama]'");
            
            if (isset($_GET["tarif"])) array_push($where_ksMengemudi, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksMengemudi, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksMengemudi, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksMengemudi, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksMengemudi, " kapasitas='$_GET[kapasitas]'");

            $sql_ksMengemudi = "SELECT * FROM kursus_mengemudi";
            if (count($where_ksMengemudi) > 0) {
                $sql_ksMengemudi .= " WHERE";
                for ($i = 0; $i < count($where_ksMengemudi); $i++) {
                    $sql_ksMengemudi .= $where_ksMengemudi[$i];
                    if ((count($where_ksMengemudi) - 1) != $i) {
                        $sql_ksMengemudi .= " AND";
                    }
                }
            }

            // print_r($sql_ksMengemudi);

            $result = mysqli_query($dbConn, $sql_ksMengemudi);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksMengemudiMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksMengemudiIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_mengemudi&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-mobil.jpg\"></center></a>'" ?>);
                ksMengemudiLayer.addLayer(ksMengemudiMarker);

                <?php
            }
        ?> 

        var ksMusikLayer = new L.LayerGroup();
        var ksMusikIco = L.icon({
            iconUrl: 'images/icon/circle (2).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksMusik = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_musik") 
                if (isset($_GET["nama"])) array_push($where_ksMusik, " nama='$_GET[nama]'");

            if (isset($_GET["tarif"])) array_push($where_ksMusik, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksMusik, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksMusik, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksMusik, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksMusik, " kapasitas='$_GET[kapasitas]'");

            $sql_ksMusik = "SELECT * FROM kursus_musik";
            if (count($where_ksMusik) > 0) {
                $sql_ksMusik .= " WHERE";
                for ($i = 0; $i < count($where_ksMusik); $i++) {
                    $sql_ksMusik .= $where_ksMusik[$i];
                    if ((count($where_ksMusik) - 1) != $i) {
                        $sql_ksMusik .= " AND";
                    }
                }
            }

            // print_r($sql_ksMusik);

            $result = mysqli_query($dbConn, $sql_ksMusik);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksMusikMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksMusikIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_musik&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-musik.jpg\"></center></a>'" ?>);
                ksMusikLayer.addLayer(ksMusikMarker);

                <?php
            }
        ?>  

        var ksBolaLayer = new L.LayerGroup();
        var ksBolaIco = L.icon({
            iconUrl: 'images/icon/circle (3).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksBola = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_bola") 
                if (isset($_GET["nama"])) array_push($where_ksBola, " nama='$_GET[nama]'");

            if (isset($_GET["tarif"])) array_push($where_ksBola, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksBola, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksBola, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksBola, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksBola, " kapasitas='$_GET[kapasitas]'");

            $sql_ksBola = "SELECT * FROM kursus_bola";
            if (count($where_ksBola) > 0) {
                $sql_ksBola .= " WHERE";
                for ($i = 0; $i < count($where_ksBola); $i++) {
                    $sql_ksBola .= $where_ksBola[$i];
                    if ((count($where_ksBola) - 1) != $i) {
                        $sql_ksBola .= " AND";
                    }
                }
            }

            // print_r($sql_ksBola);
                        
            $result = mysqli_query($dbConn, $sql_ksBola);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksBolaMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksBolaIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_bola&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-bola.jpg\"></center></a>'" ?>);
                ksBolaLayer.addLayer(ksBolaMarker);

                <?php
            }
        ?>    

        var ksAkademikLayer = new L.LayerGroup();
        var ksAkademikIco = L.icon({
            iconUrl: 'images/icon/circle (4).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksAkademik = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_akademik") 
                if (isset($_GET["nama"])) array_push($where_ksAkademik, " nama='$_GET[nama]'");

            if (isset($_GET["tarif"])) array_push($where_ksAkademik, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksAkademik, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksAkademik, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksAkademik, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksAkademik, " kapasitas='$_GET[kapasitas]'");

            $sql_ksAkademik = "SELECT * FROM kursus_akademik";
            if (count($where_ksAkademik) > 0) {
                $sql_ksAkademik .= " WHERE";
                for ($i = 0; $i < count($where_ksAkademik); $i++) {
                    $sql_ksAkademik .= $where_ksAkademik[$i];
                    if ((count($where_ksAkademik) - 1) != $i) {
                        $sql_ksAkademik .= " AND";
                    }
                }
            }

            // print_r($sql_ksAkademik);

            $result = mysqli_query($dbConn, $sql_ksAkademik);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksAkademikMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksAkademikIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_akademik&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-akademik.jpg\"></center></a>'" ?>);
                ksAkademikLayer.addLayer(ksAkademikMarker);

                <?php
            }
        ?>  

        var ksKomputerLayer = new L.LayerGroup();
        var ksKomputerIco = L.icon({
            iconUrl: 'images/icon/circle (5).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksKomputer = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_komputer") 
                if (isset($_GET["nama"])) array_push($where_ksKomputer, " nama='$_GET[nama]'");

            if (isset($_GET["tarif"])) array_push($where_ksKomputer, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksKomputer, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksKomputer, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksKomputer, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksKomputer, " kapasitas='$_GET[kapasitas]'");

            $sql_ksKomputer = "SELECT * FROM kursus_komputer";
            if (count($where_ksKomputer) > 0) {
                $sql_ksKomputer .= " WHERE";
                for ($i = 0; $i < count($where_ksKomputer); $i++) {
                    $sql_ksKomputer .= $where_ksKomputer[$i];
                    if ((count($where_ksKomputer) - 1) != $i) {
                        $sql_ksKomputer .= " AND";
                    }
                }
            }

            // print_r($sql_ksKomputer);

            $result = mysqli_query($dbConn, $sql_ksKomputer);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksKomputerMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksKomputerIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_komputer&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-komputer.jpg\"></center></a>'" ?>);
                ksKomputerLayer.addLayer(ksKomputerMarker);

                <?php
            }
        ?>  

        var ksMenjahitLayer = new L.LayerGroup();
        var ksMenjahitIco = L.icon({
            iconUrl: 'images/icon/circle (6).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $where_ksMenjahit = array();

            if (isset($_GET["kategori"]) && $_GET["kategori"] == "kursus_menjahit") 
                if (isset($_GET["nama"])) array_push($where_ksMenjahit, " nama='$_GET[nama]'");

            if (isset($_GET["tarif"])) array_push($where_ksMenjahit, " tarif='$_GET[tarif]'");
            if (isset($_GET["fasilitas"])) array_push($where_ksMenjahit, " fasilitas='$_GET[fasilitas]'");
            if (isset($_GET["jadwal"])) array_push($where_ksMenjahit, " jadwal='$_GET[jadwal]'");
            if (isset($_GET["operasional"])) array_push($where_ksMenjahit, " operasional='$_GET[operasional]'");
            if (isset($_GET["kapasitas"])) array_push($where_ksMenjahit, " kapasitas='$_GET[kapasitas]'");

            $sql_ksMenjahit = "SELECT * FROM kursus_menjahit";
            if (count($where_ksMenjahit) > 0) {
                $sql_ksMenjahit .= " WHERE";
                for ($i = 0; $i < count($where_ksMenjahit); $i++) {
                    $sql_ksMenjahit .= $where_ksMenjahit[$i];
                    if ((count($where_ksMenjahit) - 1) != $i) {
                        $sql_ksMenjahit .= " AND";
                    }
                }
            }

            // print_r($sql_ksMenjahit);

            $result = mysqli_query($dbConn, $sql_ksMenjahit);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var ksMenjahitMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: ksMenjahitIco}
                ).bindPopup(<?php echo "'<a href=\"location-map-detail.php?kategori=kursus_menjahit&id=".$row["id"]."\"target=\"_blank\">".$row['nama']."<br><center><img width=\"100%;\" src=\"images/layers/kursus-menjahit.jpg\"></center></a>'" ?>);
                ksMenjahitLayer.addLayer(ksMenjahitMarker);

                <?php
            }
        ?>  
    /* 
     * End: Initialize Layer/Category 
     */

    /* 
    * Start: Generate Map Server
    */
        var _layers = [];
        if (getQuery('kategori') != null) {
            var parameterValue = getQuery('kategori');
            var selectedLayer = new L.LayerGroup();

            if (parameterValue == "kursus_mengemudi") selectedLayer = ksMengemudiLayer;
            if (parameterValue == "kursus_musik") selectedLayer = ksMusikLayer;
            if (parameterValue == "kursus_bola") selectedLayer = ksBolaLayer;
            if (parameterValue == "kursus_akademik") selectedLayer = ksAkademikLayer;
            if (parameterValue == "kursus_komputer") selectedLayer = ksKomputerLayer;
            if (parameterValue == "kursus_menjahit") selectedLayer = ksMenjahitLayer;

            _layers = [
                googleRoadmap, 
                selectedLayer
            ];
        } else {
            _layers = [
                googleRoadmap, 
                ksMengemudiLayer,
                ksMusikLayer,
                ksBolaLayer,
                ksAkademikLayer,
                ksKomputerLayer,
                ksMenjahitLayer
            ];
        }

        var map = new L.Map('map', {
            scrollwheel: true,
            fullscreenControl: true,
            center: new L.LatLng(-7.981894, 112.626503),
            zoom: 13, 
            layers: _layers
        });
    
        map.addControl(new L.Control.Scale());
        map.addControl(new L.Control.Layers(
            {
                '1. Google Roadmap': googleRoadmap, 
                '2. Google Terrain': googleTerrain, 
                '3. Google Satellite': googleSatellite, 
                '4. Google Hybrid': googleHybrid, 

                '5. Mapnik': mpn, 
                '6. MapQuest': qst, 
                '7. CloudMade': cloudmade, 
                '8. Spinal Map': SpinalMap, 
                '9. Neighbourhood': Neighbourhood, 
                '10. Mobile Atlas': MobileAtlas, 
                '11. Transport Dark': TransportDark, 
                '12. Transport': transport, 
                '13. Landscape': Landscape, 
                '14. Outdoors': Outdoors, 
                '15. OpenCycleMap': OpenCycleMap, 
                '16. Pioneer': pioneer, 
                '17. Stamen Map Toner': stamentoner,
                '18. Stamen Map Terrain': stamenterrain, 
                '19. Stamen Map Water Color': stamenwatercolor,

                // 'BING Aerial': bing_aerial,
                // 'BING Road': bing_road,
                '20. BING Canvas Dark': bing_canvasDark
            },
            {}
        ));
        map.addControl(new L.Control.Layers(
            {},
            {
                'Kursus Mengemudi': ksMengemudiLayer,
                'Kursus Musik': ksMusikLayer,
                'Kursus Bola': ksBolaLayer,
                'Kursus Akademik': ksAkademikLayer,
                'Kursus Komputer': ksKomputerLayer,
                'Kursus Menjahit': ksMenjahitLayer
            }
        ));
        
        map.on('click', onMapClick);
        var popup = new L.Popup();
        function onMapClick(e) {
            var latlngStr = '(' + e.latlng.lat + ', ' + e.latlng.lng + ')';

            popup.setLatLng(e.latlng);
            popup.setContent("Koordinat Anda " + latlngStr);

            map.setZoom(55);
            map.setCenter(e.latLng);
            map.openPopup(popup);
        }

        function getQuery(q) {
            return (window.location.search.match(new RegExp('[?&]' + q + '=([^&]+)')) || [, null])[1];
        }
    /* 
    * End: Generate Map Server
    */
</script>