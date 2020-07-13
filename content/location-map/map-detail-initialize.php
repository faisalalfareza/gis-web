<?php
    include "server/connection.php";
    $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
    mysqli_select_db($dbConn, $dbName);

    $tipe_kursus = $_GET["kategori"];
    $id_kursus = $_GET["id"];
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
        var kursusLayer = new L.LayerGroup();
        var kursusIco = L.icon({
            iconUrl: 'images/icon/circle (1).png',
            // shadowUrl: 'images/icon/circle (4).png',

            iconSize:     [20, 20], // size of the icon
            shadowSize:   [10, 14], // size of the shadow
            iconAnchor:   [22, 64], // point of the icon which will correspond to marker's location
            shadowAnchor: [4, 12],  // the same for the shadow
            popupAnchor:  [-3, -16] // point from which the popup should open relative to the iconAnchor
        });
        
        <?php
            $sql = "SELECT * FROM $tipe_kursus WHERE id='$id_kursus'";
            $result = mysqli_query($dbConn, $sql);
            while ($row = mysqli_fetch_array($result)) {
                ?>

                var kursusMarker = new L.Marker.Text(
                    new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>), 
                    <?='"'.$row["nama"].'"'?>,
                    {icon: kursusIco}
                );
                kursusLayer.addLayer(kursusMarker);

                var map = new L.Map('map', {
                    scrollwheel: true,
                    fullscreenControl: true,
                    center: new L.LatLng(<?=$row["lat"]?> , <?=$row["long"]?>),
                    zoom: 18, 
                    layers: [
                        googleRoadmap, 
                        kursusLayer
                    ]
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
                    }
                ));
                
                map.on('click', onMapClick);

                <?php
            }
        ?> 
    /* 
     * End: Initialize Layer/Category 
     */

    /* 
    * Start: Generate Map Server
    */
        var popup = new L.Popup();
        function onMapClick(e) {
            var latlngStr = '(' + e.latlng.lat + ', ' + e.latlng.lng + ')';

            popup.setLatLng(e.latlng);
            popup.setContent("Koordinat Anda " + latlngStr);

            map.openPopup(popup);
        }
    /* 
    * End: Generate Map Server
    */
</script>