<?php
include("./app/source/connect.php");

// $db->query("INSERT INTO filmler SET film_adi = 'Yüzüklerin Efendisi'");

function film_listele() {

  global $db;

  $query = $db->query("SELECT * FROM filmler f
  JOIN kategoriler k ON f.kategori = k.id");
  $rows = $query->fetchAll();

  return $rows;

}

function kategori_listele() {

  global $db;

  $query = $db->query("SELECT * FROM kategoriler");
  $rows = $query->fetchAll();

  return $rows;

}

function uyenin_filmleri($user) {

  global $db;

  $query = $db->query("SELECT * FROM filmler f
  JOIN kategoriler k ON f.kategori = k.id
  LEFT JOIN film_uye fu ON fu.film_id = f.id
  WHERE fu.uye_id = $user");
  $rows = $query->fetchAll();

  return $rows;

}

?>
