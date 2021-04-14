<?php

$conn = mysqli_connect('localhost', 'root', '', 'Kerajinan');

if (!$conn) {
    die ("Koneksi gagal. " . mysqli_connect_error()); // close koneksi
}