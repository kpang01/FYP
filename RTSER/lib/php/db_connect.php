<?php
$servername = "localhost"; // replace with your server name
$username = "Khongjun"; // replace with your MySQL username
$password = ""; // replace with your MySQL password
$dbname = "RTSER_App"; // replace with your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
