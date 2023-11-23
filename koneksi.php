<?php

    $koneksi = mysqli_connect("localhost:3307","root","","2106115_Zhillan");

    if (!$koneksi) {
        echo "<script>alert('Koneksi Gagal');</script>";
    }

?>