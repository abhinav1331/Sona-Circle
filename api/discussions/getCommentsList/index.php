<?php 
include("../../../wp-config.php");
global $wpdb;
$userID = $_GET['userID'];
$discussionID = $_GET['discussionsID'];
$myArray = array();
if($userID == ""|| $discussionID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$countComments = $wpdb->get_var("SELECT count(`id`) FROM `im_discussion` WHERE `id` = $discussionID");
		if($countComments == 0) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Discussion");
		}
		else
		{
			$getComments = $wpdb->get_results("SELECT * FROM `im_discussion_comment` WHERE `dis_id` = $discussionID");
			foreach ($getComments as $key => $value) {
				$requestID = $value->id;
				$created_at = $value->created_at;
				$name = get_user_meta($value->user_id , "first_name" , true);
				$profession = get_user_meta($value->user_id , "profession" , true);
				$userImageUrl = get_user_meta($value->user_id , "userImageUrl" , true);
				$comment = $value->user_comment;
				$myArray[] = array("commentID" =>$requestID , "userID" => $value->user_id , "name" => $name , "profession" => $profession , "userImageUrl" => $userImageUrl , "userComment" => $comment , "discussion_created"=> $created_at);
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