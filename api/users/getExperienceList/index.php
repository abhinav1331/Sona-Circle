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
		$userResultGET = array();
		$userResult = $wpdb->get_results("SELECT * FROM `im_experiance` WHERE `user_id` = $userID ORDER BY `id` DESC");
		foreach ($userResult as $key => $value) {
			if($value->is_present == "1") {
				$endData = "Present";
			} else {
				$endData = date("d/m/Y" , strtotime($value->end_date));
			}
			$userResultGET[] = array("id" => $value->id , "title" => $value->title ,  "startDate" => date("d/m/Y" , strtotime($value->start_date)) , "endDate" => $endData);
		}
		if(empty($userResultGET)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		} else {
			$json = array("success" => 1 , "result" => $userResultGET , "error" => "No Error Found");
		}
	}
}
echo json_encode($json);