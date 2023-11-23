<!DOCTYPE html>
<html lang="en">
<head>
    <title>FORMULIR SCHOLARSHIP KAGOSHIMA UNITED</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="bg">
        <div class="logo">
            <img src="pssi.png" alt="pssi">
            <img src="logo.png" alt="logo"> 
        </div>
        <h1 class="header">Formulir Pendaftaran Beasiswa Training Camp Kagoshima UFC</h1>
            <form class="isi" action="./addpemain.php" method="post">
                <table>
                    <tr>
                        <td style="width: 20%;"><label for="nik">Nomor Induk Kependudukan</label></td>
                        <td><input type="text" name="nik" minlength="16" maxlength="16" placeholder="Masukkan Nomor Induk Kependudukan" required></td>
                        <td rowspan="4" style="width: 400px; vertical-align: top;"><div id="info"><b>INFORMASI</b></div>
                        <div id="isiinf"><ol>
                            <li>Peserta merupakan WNI</li>
                            <li>Peserta Berusia 10-15 Tahun</li>
                            <li>Peserta bersedia untuk diberangkatkan ke Kagoshima, Jepang</li>
                            <li>Pusat pelatihan berjalan selama 3-6 bulan</li>
                            <li>Semua pembayaran ditanggung pemerintah</li>
                            <li>Pertanyaan dapat diajukan pada nomor berikut +62 8xx-xxx-xxx</li>
                        </ol></div></td>
                    </tr>
                    <tr>
                        <td><label for="nama">Nama Lengkap</label></td>
                        <td><input type="text" name="nama" maxlength="100" placeholder="Masukkan Nama Lengkap" required></td>
                    </tr>
                    <tr>
                        <td><label for="email">E-mail</label></td>
                        <td><input type="email" name="email" maxlength="100" placeholder="Masukkan E-mail" required></td>
                    </tr>
                    <tr>
                        <td><label for="tgl_lahir">Tanggal Lahir</label></td>
                        <td><input type="date" name="tgl_lahir" required><br></td>
                    </tr>
                    
                </table>
                <button type="submit" id="button">Kirim</button>
            </form>
            
            <div id="bwh">
                <a href="https://www.pssi.org/" target="_blank">Halaman Informasi PSSI</a>
                |
                <a href="https://www.jleague.co/id/clubs/Kagoshima-United-FC" target="_blank">Halaman Informasi Kagoshima UFC</a>
            </div>
    </div>
</body>
</html>