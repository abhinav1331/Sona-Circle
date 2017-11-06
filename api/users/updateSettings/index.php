<?php 
include("../../../wp-config.php");

global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$userID = $data_body['userID'];
$pushNotification = $data_body['pushNotification'];
$broadcastNotification = $data_body['broadcastNotification'];
$postNotification = $data_body['postNotification'];
$showPreview = $data_body['showPreview'];

if($userID == "" || $pushNotification == "" || $broadcastNotification == "" || $postNotification == "" || $showPreview == "") {
	$json = array("success" => 0, "result" =>1 , "error" =>  "Parameters Missing");
} else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 1, "error" =>  "Invalid User");
	} else {
		update_user_meta( $userID, 'pushNotification', $pushNotification );
		update_user_meta( $userID, 'broadcastNotification', $broadcastNotification );
		update_user_meta( $userID, 'postNotification', $postNotification );
		update_user_meta( $userID, 'showPreview', $showPreview );

		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
	}
}
echo json_encode($json);		