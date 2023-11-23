<?php

    include './koneksi.php';

    $nik = $_POST['nik'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $tgl_lahir = $_POST['tgl_lahir'];

    if ($tgl_lahir >= '2008-01-01' && $tgl_lahir <= '2013-01-01') {
        $query = "INSERT INTO beasiswa(nik, nmpemain, email, tgl_lahir) VALUES ('$nik','$nama','$email','$tgl_lahir')";
        mysqli_query($koneksi,$query);
        echo "<script>alert('Data berhasil disubmit, silahkan cek email anda secara berkala');</script>";
        header("Location: ./index.php");
        exit;
    } else {
        echo "<script>alert('Usia tidak memenuhi syarat');</script>";
        header("Location: ./index.php");
        exit;
    }

?>