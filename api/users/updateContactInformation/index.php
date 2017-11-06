<?php 
include("../../../wp-config.php");
global $wpdb;

$data_body = json_decode(file_get_contents("php://input"), true);
$userID = $data_body['userID'];
$facebook = $data_body['facebook'];
$twitter = $data_body['twitter'];
$instagram = $data_body['instagram'];
$phone = $data_body['phone'];

if($userID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		update_user_meta($userID , "facebook" , $facebook);
		update_user_meta($userID , "twitter" , $twitter);
		update_user_meta($userID , "instagram" , $instagram);
		update_user_meta($userID , "phone" , $phone);
		$json = array("success" => 1, "result" => 1 , "error" =>  "No Error Found");
	}
}
echo json_encode($json);