<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);

$userID = $data_body['userID'];
$id = $data_body['language_id'];
$title = $data_body['title'];
if($userID == "" || $id == "" || $title == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "All Fields are Required");
} else {
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$rowCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_language` WHERE `id` = $id");
		if($rowCheck != 0) {
			$rowData = $wpdb->get_results("SELECT * FROM `im_language` WHERE `id` = $id");
			$getUserID = $rowData[0]->user_id;
			if($getUserID == $userID) {
				$query1="UPDATE `im_language` SET `name` = '$title' WHERE `id`= $id";
				$wpdb->query($query1);	
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "Experiance not belong to current user");
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Experiance ID");
		}
	}
}
echo json_encode($json);
?>