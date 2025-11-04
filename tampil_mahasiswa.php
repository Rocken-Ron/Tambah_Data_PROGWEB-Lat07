<?php
include_once('koneksi.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> :Data Mahasiswa: </title>
</head>
<body>
    <table border= "1" style="border-collapse:collaps;width:50%">
        <tr>
            <th>NIM</th>
            <th>Nama</th>
            <th>Tgl_lahir</th>
            <th>tlpn</th>
            <th>Alamat</th>
        </tr>
        <?php
        $mhs = mysqli_query($conn, 'SELECT * FROM tbl_mahasiswa');
        while($r = mysqli_fetch_array($mhs)) {
        ?>
            <tr>
                <td><?=$Nim?></td>
                <td><?=$Nama?></td>
                <td><?=$Tgl_lahir?></td>
                <td><?=$No_Hp?></td>
                <td><?=$Alamat?></td>
    
            </tr>
        <?php
        }
        ?>
    </table>
</body>
</html>