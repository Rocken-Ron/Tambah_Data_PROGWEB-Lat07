    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>.:Tambah Mahasiswa:.</title>
</head>
<body>
    <form action="insert.php" method = "post">
        <table border = "1">
            <caption>Form Data Mahasiswa</caption>
            <tr>
                <td>NIM</td>
                <td><input type="number" name = "nim" required></td>
            </tr>
            <tr>
                <td>Nama</td>
                <td><input type="text" name = "nama" required></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="date" name = "tgl_lahir" required></td>
            </tr>
            <tr>
                <td>No HP</td>
                <td><input type="text" name = "no_hp" required></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td><textarea name="alamat" required></textarea></td>
            </tr>
            <tr>
                <td colspan = "2">
                    <input type = "submit" value = "Submit">
                    <input type = "reset" value = "Clear Form">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>