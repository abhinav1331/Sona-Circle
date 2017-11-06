<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
if($userID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$facebook = get_user_meta($userID , "facebook" , true);
		$twitter = get_user_meta($userID , "twitter" , true);
		$instagram = get_user_meta($userID , "instagram" , true);
		$phone = get_user_meta($userID , "phone" , true);
		$myArray = array("facebook" => $facebook ,"twitter" => $twitter ,"instagram" => $instagram ,"phone" => $phone , "email" => $user->data->user_email);
		$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
	}
}
echo json_encode($json);