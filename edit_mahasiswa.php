<?php
    require_once("koneksi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Mahasiswa</title>
</head>
<body>

    <?php
    $nim = $_GET["nim"]; //--> untuk mengambil value dari url (query string)
    //echo $nim;--> untuk menguji saja
    $sql = $conn->query("SELECT * FROM tbl_mahasiswa WHERE nim='$nim'");//-->nim yang sama dengan get
    $r = $sql->fetch_assoc(); //--> memecah sql untuk mengambil data hasil query (perbedaan mysqli_fetch_array)
    extract($r); //--> untuk mengambil semua attribute yang ada pada tabel, jika tidak ada extract,
    //  maka harus menuliskan $r['nim'], $r['nama'], dst
    $ar_hobi = explode(", ", $hobi); //--> untuk memecah string hobi menjadi array
    $hobs = array('Membaca', 'Olahraga', 'Musik', 'Travelling');
    //print_r($ar_hobi); //--> untuk menguji saja
    ?>

    <form action="" method="">
        <table border="1">
            <caption>Form Data Mahasiswa</caption>
            <tr>
                 <!-- Nama harus sesuai dengan nama field di database --> 
                <td>NIM</td>
                <td><input type="number" name="nim" value="<?= $nim ?>" required></td>
            </tr>
            <tr>
                <td>Nama</td>
                <td><input type="text" name="nama" value="<?= $Nama ?>" required></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="date" name="tgl_lahir" value="<?= $Tgl_lahir ?>" required></td>
            </tr>
            <tr>
                <td>No HP</td>
                <td><input type="text" name="no_hp" value="<?= $No_Hp ?>" required></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><textarea name="alamat" required> <?= $Alamat ?> </textarea></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <input type="radio" name="gender" value="L">Laki-laki
                    <br>
                    <input type="radio" name="gender" value="P">Perempuan
                </td>
            </tr>
            <tr>
                <td>Hobi</td>
                <td>
                     <?php 
        foreach($hobs as $hb) {
            $cek_ada_atau_tidak = in_array($hb, $ar_hobi) ? 'checked' : '';
            echo "<input type='checkbox' name='hobi[]' value='$hb' $cek_ada_atau_tidak> $hb <br>";
        }
        ?>
                    <!-- <input type="checkbox" name="hobi[]" value="Membaca">Membaca
                    <br>
                    <input type="checkbox" name="hobi[]" value="Olahraga">Olahraga
                    <br>
                    <input type="checkbox" name="hobi[]" value="Musik">Musik
                    <br>
                    <input type="checkbox" name="hobi[]" value="Travelling">Travelling -->
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update">
                    <input type="reset" value="Clear Form">
                </td>
            </tr>
        </table>
    <table> 
        
    </table>
</body>
</html>