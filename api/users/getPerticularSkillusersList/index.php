<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$skill_id = $_GET['skill_id'];

if($userID == "" || $skill_id == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
} else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$im_skills = $wpdb->get_results("SELECT * FROM `im_skills` WHERE `id` = $skill_id");
		$getUserID = $im_skills[0]->user_id;
		if($getUserID == $userID) {
			$myArray = array();
			foreach( $wpdb->get_results("SELECT * FROM `im_skills_endorsement` WHERE `skill_id` = $skill_id") as $key => $row) {
				$userId = $row->endorse_user;
				$name = get_user_meta($userId , "first_name" , true);
				$profession = get_user_meta($userId , "profession" , true);
				$userImageUrl = get_user_meta($userId , "userImageUrl" , true);
				$myArray[] = array("opponentID"=> $userId ,"name"=> $name , "profession" => $profession, "userImageUrl" => $userImageUrl);
			}
			if(empty($myArray)) {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			} else {
				$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Skill not belong to current user");
		}
	}
}
echo str_replace("null",'""',json_encode($json));