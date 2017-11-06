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
			$myArry = array();
			foreach( $wpdb->get_results("SELECT * FROM `im_skills` WHERE `user_id` = $userID") as $key => $row) {
				$countMy = $wpdb->get_var("SELECT count(`id`) FROM `im_skills_endorsement` WHERE `skill_id` = $row->id");
				$myArry[] = array("skill_id" => $row->id , "name" => $row->name , "count" => $countMy);
			}
			if(empty($myArry)) {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			} else {
				$json = array("success" => 1, "result" => $myArry, "error" =>  "No Error Found");
			}
	}
}
echo json_encode($json);
?>