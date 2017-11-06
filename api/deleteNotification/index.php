<?php 
include("../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$notificationID = $_GET['notificationID'];
if($userID == "" || $notificationID == "" ) {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$rowCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_notifications` WHERE `id` = $notificationID");
		if($rowCheck != 0) {
			$rowData = $wpdb->get_results("SELECT * FROM `im_notifications` WHERE `id` = $notificationID");
			$getUserID = $rowData[0]->user_id;
			if($getUserID == $userID) {
				$wpdb->query("DELETE  FROM `im_notifications` WHERE `id` = $notificationID");
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "notification not belong to current user");
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Notification ID");
		}
	}
}
echo json_encode($json);