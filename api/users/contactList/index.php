<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$myArray = array();
if($userID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		$myContacts = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `status` = 1");
		if(empty($myContacts)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		} else {
			foreach ($myContacts as $key => $value) {
				$name = get_user_meta($value->user_friend_id , "first_name" , true);
				$profession = get_user_meta($value->user_friend_id , "profession" , true);
				$userImageUrl = get_user_meta($value->user_friend_id , "userImageUrl" , true);
				$quickBloxID = get_user_meta($value->user_friend_id , "quickBloxID" , true);
				$myArray[] = array("friendID" => $value->user_friend_id , "name" => $name, "quickBloxID" => $quickBloxID , "profession" => $profession , "userImageUrl" => $userImageUrl);
			}
			if(empty($myArray)) {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			} else {
				$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
			}

		}
	}
}
echo json_encode($json);