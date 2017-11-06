<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$id = $_GET['id'];
if($userID == "" || $id == "" ) {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$rowCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_education` WHERE `id` = $id");
		if($rowCheck != 0) {
			$rowData = $wpdb->get_results("SELECT * FROM `im_education` WHERE `id` = $id");
			$getUserID = $rowData[0]->user_id;
			if($getUserID == $userID) {
				$wpdb->query("DELETE  FROM `im_education` WHERE `id` = $id");
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "Education not belong to current user");
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Education ID");
		}
	}
}
echo json_encode($json);