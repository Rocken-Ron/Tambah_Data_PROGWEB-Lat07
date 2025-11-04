<?php
// MENGHUBUNGKAN KE DATABASE
require_once("pdo_koneksi.php");

// MENANGKAP DATA/NILAI PADA FORM
// $nim = $_POST['nim'];
// $nama = $_POST['nama'];
// $tgl_lahir = $_POST['tgl_lahir'];
// $no_hp = $_POST['no_hp'];
// $alamat = $_POST['alamat'];

// AMBIL SEMUA ATTRIBUTE YANG ADA PADA FORM 
extract($_POST);

// QUERY UNTUK MEMASUKKAN DATA YANG DIISI PADA FORM 
$sql = "INSERT INTO tbl_mahasiswa VALUES ('$nim', '$nama', '$tgl_lahir', '$no_hp', '$alamat')";

// KODE UNTUK MENJALANKAN QUERY $sql
$conn->query($sql);

// KEMBALI KE HALAMAN TAMPIL MAHASISWA
header("location:pdo_tampil_mahasiswa.php");
?>