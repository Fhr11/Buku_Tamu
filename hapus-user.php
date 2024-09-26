<?php
//panggil file function.php
require_once('function.php');

//jika ada id
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (hapus_tamu($id_tamu) > 0) {
        //jika data breehasil di hapus maka akan muncul alert
        echo "<script>alert('Data berhasil dihapus')<script>";
        //redirect ke halaman buku-tamu.php
        echo "<script>window.location='users.php'</script>";
    } else {
        //jika gagagl dihapus
        echo "<script>alert('Data gagal dihapus')<script>";
        echo "<script>window.location.href='users.php</script>";
    }
}
