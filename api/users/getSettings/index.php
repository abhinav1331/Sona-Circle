<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$myArray = array();
if($userID == "") {
	$json = array("success" => 0, "result" => "null", "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
			$pushNotification = get_user_meta( $userID, 'pushNotification', true );
			$broadcastNotification = get_user_meta( $userID, 'broadcastNotification', true );
			$postNotification = get_user_meta( $userID, 'postNotification', true );
			$showPreview = get_user_meta( $userID, 'showPreview', true );
			if($pushNotification == "") {
				$pushNotification = 0;
			}
			if($broadcastNotification == "") {
				$broadcastNotification = 0;
			}
			if($postNotification == "") {
				$postNotification = 0;
			}
			if($showPreview == "") {
				$showPreview = 0;
			}
			$myData[] = array("pushNotification" => (int)$pushNotification);
			$myData[] = array("broadcastNotification" => (int)$broadcastNotification);
			$myData[] = array("postNotification" => (int)$postNotification);
			$myData[] = array("showPreview" => (int)$showPreview);
			// $myData[] = array("pushNotification" => $pushNotification , "broadcastNotification" => $broadcastNotification, "postNotification" => $postNotification, "showPreview" => $showPreview);
			$json = array("success" => 1 , "result" => $myData , "error" => "No Erro Found");
	}
}
echo json_encode($json);