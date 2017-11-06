<?php 
include("../../../wp-config.php");

global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$userID = $data_body['userID'];
$quickBloxIDTmp = $data_body['quickBloxID'];
if($userID == "" || $quickBloxIDTmp == "") {
	$json = array("success" => 0, "result" => "null", "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
		$quickBloxID = explode("|" , $quickBloxIDTmp);
		$myArr = array();
		foreach ($quickBloxID as $key => $value) {
			$myRes = $wpdb->get_results("SELECT * FROM `im_usermeta` WHERE `meta_key` = 'quickBloxID' AND `meta_value` = '$value'");
			if(empty($myRes)) {
				$json = array("success" => 0, "result" => "null", "error" =>  "Invalid QuickBlox ID");
				break;
			} else {
				$myUserd = $myRes[0]->user_id;
				$quickBloxID = get_user_meta($myUserd , "quickBloxID" , true);
				$first_name = get_user_meta($myUserd , "first_name" , true);
				$userImageUrl = get_user_meta($myUserd , "userImageUrl" , true);

				$myArr[] = array("quickBloxID" => $quickBloxID , "name" => $first_name , "userID" => $myUserd , "userImageUrl" => $userImageUrl);
			}
		}
		$json = array("success" => 1, "result" => $myArr, "error" =>  "No Error Found");
	}
}
echo json_encode($json);

