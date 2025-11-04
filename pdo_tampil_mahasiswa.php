<?php
include_once("pdo_koneksi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data mahasiswa</title>
</head>
<body>
    <table border= "1" style="border-collapse:collaps;width:50%">
        <tr>
            <td>nim</td>
            <td>nama</td>
            <td>tgl_lahir</td>
            <td>tlpn</td>
            <td>alamat</td>
            <td>gender</td>
            <td>hobi</td>
            <td>aksi</td>
        </tr>
        <?php
        $mhs = $conn->query("SELECT * FROM tbl_mahasiswa");
        while($r = $mhs -> fetch_assoc()){
            echo "<tr>";
            foreach ($r as $d)
                echo "<td>$d</td>";
            echo "<td><a href='edit_mahasiswa.php?nim=$r[Nim]'>EDIT</a></td>";
            echo "</tr>";
        }
        ?>  
    </table>
</body>
</html>