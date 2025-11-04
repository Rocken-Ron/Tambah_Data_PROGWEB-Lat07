<?php
$db_host = 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'db_mahasiswa';
$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);
if($conn -> connect_error){
    die("Ada kesalahan: ".$conn->connect_error);
}
// }else{
//     echo "Berhasil";
// }
?>