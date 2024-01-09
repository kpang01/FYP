<?php

if (!isset($_POST)) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}

include_once("dbconnect.php");

$name = $_POST['name'];
$nickname = $_POST['nickname'];
$age = $_POST['age'];
$gender = $_POST['gender'];
$race = $_POST['race'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_BCRYPT);
$otp = rand(10000, 99999);
$na = "na";

$sqlinsert = "INSERT INTO tbl_users (user_name, user_nickname, user_age, user_gender, user_race, user_email, user_password, otp) VALUES('$name', '$nickname', '$age', '$gender', '$race', '$email', '$password', $otp)";

if ($conn->query($sqlinsert) === TRUE) {
    $response = array('status' => 'success', 'data' => null);
    sendEmail($email, $otp);
    sendJsonResponse($response);
} else {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}

function sendJsonResponse($sendArray) {
    header('Content-Type: application/json');
    echo json_encode($sendArray);
}

function sendEmail($email, $otp) {
    $subject = "OTP for Registration";
    $message = "Your OTP for registration is: $otp";
    $headers = "From: your_email@example.com"; // Replace with your email address

    if (mail($email, $subject, $message, $headers)) {
        // Email sent successfully
        // You can add additional logging or actions if needed
        // For example, you might want to log the fact that the email was sent
        // or update a database field indicating that the email was sent
    } else {
        // Failed to send email
        // Handle the error or log it as needed
    }
}
?>
