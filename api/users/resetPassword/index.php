<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$oldPassword = $data_body["oldPassword"];
$newPassword = $data_body["newPassword"];
$userID      = $data_body["userID"];
if($userID == "" || $oldPassword == "" || $newPassword =="") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	}
	else
	{
	if ( $user && wp_check_password( $oldPassword, $user->data->user_pass, $userID) ){
		wp_set_password( $newPassword, $userID );
	$json = array("success" => 1, "result" => 1, "error" => "No Error Found");
	}
	else{
	   $json = array("success" => 0, "result" => array(), "error" =>  "Old password does not match");
	}
	}
}
echo json_encode($json);