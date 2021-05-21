<?php
$servername = "database";
$username = "docker";
$password = "docker";
$db = "docker";
// Create connection
$conn = mysqli_connect($servername, $username, $password,$db);
// Check connection
if (!$conn) {
   die("Connection failed: ");
}
echo "Connected successfully";
?>
