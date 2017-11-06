<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$friendID = $_GET['friendID'];
if($userID == "" || $friendID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	$friend = get_user_by( 'ID', $friendID );
	if(empty($user) || empty($friend)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$getRes = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `user_friend_id` = $friendID AND `status` = 1");
		if(!empty($getRes)) {
			$wpdb->query("UPDATE `im_conects` SET `status` = 2 WHERE `user_id` = $userID  AND `user_friend_id` = $friendID");
			$wpdb->query("UPDATE `im_conects` SET `status` = 2 WHERE `user_id` = $friendID  AND `user_friend_id` = $userID");
			$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Users are not friend");
		}
	}
}
echo json_encode($json);