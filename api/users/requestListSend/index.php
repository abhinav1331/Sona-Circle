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
		$myReq = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `sender_id` = $userID AND `status` = 0 OR `status` = 2");
		if(empty($myReq)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
		} else {
			foreach ($myReq as $key => $value) {
				$name = get_user_meta($value->reciever_id , "first_name" , true);
				$profession = get_user_meta($value->reciever_id , "profession" , true);
				$userImageUrl = get_user_meta($value->reciever_id , "userImageUrl" , true);
				$myArray[] = array("requestID" => $value->id ,"userID" => $value->reciever_id , "name" => $name , "profession" => $profession , "userImageUrl" => $userImageUrl , "status" => $value->status);
			}
			if(empty($myArray)) {
				$json = array("success" => 0, "result" => array(), "error" =>  "No Data Found");
			} else {
			$_data = array();
			foreach ($myArray as $v) {
			  if (isset($_data[$v['userID']])) {
			    // found duplicate
			    continue;
			  }
			  // remember unique item
			  $_data[$v['userID']] = $v;
			}
			$myArray = array_values($_data);
				$json = array("success" => 1, "result" => $myArray, "error" =>  "No Error Found");
			}
		}
	}
}
echo str_replace("null",'""',json_encode($json));