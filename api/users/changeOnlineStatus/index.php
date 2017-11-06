<?php 
include("../../../wp-config.php");
global $wpdb;
$userID = $_GET['userID'];
$status = $_GET['status'];
$logout = $_GET['logout'];
if($userID == "" || $status == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
} else {
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		if($status == "true" || $status == "false") {
			if($logout == "true" || $logout == "false") {
				if($logout == "true") {
					$firebaseTokenId = get_user_meta($userID , "firebaseTokenId" , true);
					$wpdb->query("DELETE FROM `im_usermeta` WHERE `meta_key` = 'firebaseTokenId' AND `meta_value` = '$firebaseTokenId'");
				}
			}
			if($status == "false") {
				$timee = time();
				update_user_meta( $userID, 'onlineTime', $timee );
			}
			update_user_meta( $userID, 'onlineStatus', $status );
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Status");
		}
	}
}
echo json_encode($json);
?>