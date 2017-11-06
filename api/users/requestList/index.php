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
		$myReq = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `reciever_id` = $userID AND `status` = 0");
		if(empty($myReq)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Friend request");
		} else {
			foreach ($myReq as $key => $value) {
				$name = get_user_meta($value->sender_id , "first_name" , true);
				$profession = get_user_meta($value->sender_id , "profession" , true);
				$userImageUrl = get_user_meta($value->sender_id , "userImageUrl" , true);
				$quickBloxID = get_user_meta($value->sender_id , "quickBloxID" , true);
				$myArray[] = array("requestID" => $value->id ,"userID" => $value->sender_id,"quickBloxID" => $quickBloxID , "name" => $name , "profession" => $profession , "userImageUrl" => $userImageUrl);
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