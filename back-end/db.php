<?php
$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'db';
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset:utf8", $username, $password);
} catch (PDOException $e) {
    echo "Connect mySQL fail!" . $e->getMessage();
}
    