<?php
if(!isset($_POST)){
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}
include_once("dbconnect.php");

$email = $_POST['email'];
$password = sha1($_POST['password']);
$sqllogin = "SELECT * FROM tbl_users WHERE user_email = '$email' AND user_password = '$password'";

$result = $conn->query($sqllogin);
if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        $userlist = array();
        $userlist['id'] = $row['user_id'];
        $userlist['name'] = $row['user_name'];
        $userlist['nickname'] = $row['user_nickname'];
        $userlist['age'] = $row['user_age'];
        $userlist['gender'] = $row['user_gender'];
        $userlist['race'] = $row['user_race'];
        $userlist['email'] = $row['user_email'];
        $userlist['regdate'] = $row['user_datereg'];
        $userlist['otp'] = $row['user_otp'];
        $response = array('status' => 'success', 'data' => $userlist);
        sendJsonResponse($response);
    }
}else{
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}
$conn->close();
function sendJsonResponse($sendArray){
    header('Content-Type: application/json');
    echo json_encode($sendArray);
}
?>