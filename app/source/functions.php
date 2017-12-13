<?php
include("./app/source/connect.php");


function puan_ver() {

  global $db;

  $film_id = $_POST['film'];
  $puan = $_POST['puan'];

  $query = $db->prepare("INSERT INTO film_uye SET
    uye_id = ?, film_id = ?, puan = ?");

  $query->execute(array(1, $film_id, $puan));

}

if (isset($_POST['film'])) {

  puan_ver();

}


function film_listele() {

  global $db;

  $query = $db->query("SELECT *, f.id as film_id FROM filmler f
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
