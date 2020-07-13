<?php
    include "connection.php";

    $dbConn = mysqli_connect($dbServer, $dbUsr, $dbPasswd) or die(mysqli_error()); 
    mysqli_select_db($dbConn, $dbName);
    
    $sql = "SELECT nama FROM " .$_POST['variable']. " GROUP BY nama ORDER BY nama ASC";
    $result = mysqli_query($dbConn, $sql);

    $data = array();
    while ($row = mysqli_fetch_array($result)) {
        array_push($data, $row['nama']);
    }
    echo json_encode($data);
?>