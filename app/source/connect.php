<?php

$dbhost = 'localhost';
$dbname = 'filmapp';
$dbuser = 'root';
$dbpass = '';

try {

  $db = new PDO("mysql:host=$dbhost;dbname=$dbname;charset=utf8",
  $dbuser, $dbpass);

} catch (PDOException $e) {

  echo 'Bağlantı kurulamadı';

}

 ?>
