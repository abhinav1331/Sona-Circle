<?php 
include("../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
if($userID == "") {
	$json = array("success" => 0, "result" => "null", "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
		$myArray = array();
		$getNotification = $wpdb->get_results("SELECT * FROM `im_notifications` WHERE `user_id` = $userID ORDER BY `id` DESC" );
		foreach ($getNotification as $key => $value) {
			$getOpponentID = $value->sender_id;
			$name= get_user_meta($getOpponentID , "first_name" , true);
			$userImageUrl= get_user_meta($getOpponentID , "userImageUrl" , true);
			$myMessage = $value->message;
			$time = $value->time;
			$type = $value->type;
			$recoId = $value->recoId;
			$myArray[] = array("opponentID" => $getOpponentID , "notificationID" => $value->id , "name" => $name , "image" => $userImageUrl , "message" => $myMessage, "time" => $time , "type" => $type , "recoId" => $recoId);
		}
		if(empty($myArray)) {
			$json = array("success" => 0, "result" => "null", "error" =>  "You have no notifications");
		} else {
			$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
		}
	}
}
echo json_encode($json);