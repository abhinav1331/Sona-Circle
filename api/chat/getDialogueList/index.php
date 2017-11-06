<?php 
include("../../../wp-config.php");

global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);
$userID = $data_body['userID'];
$dialogueIdTmp = $data_body['dialogueId'];
if($userID == "" || $dialogueIdTmp == "") {
	$json = array("success" => 0, "result" => "null", "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => "null", "error" =>  "Invalid User");
	} else {
		$dialogueIdTmp = explode("|" , $dialogueIdTmp);
		$myArr = array();
		foreach ($dialogueIdTmp as $key => $value) {
			$myRes = $wpdb->get_results("SELECT * FROM `im_group_chat` WHERE `dialogue_id` =  '$value'");
			if(empty($myRes)) {
				$json = array("success" => 0, "result" => "null", "error" =>  "Invalid Dialogue ID");
				break;
			} else {
				$myUserd = $myRes[0]->user_id;
				$name = $myRes[0]->name;
				$image = $myRes[0]->image;
				$dialogue_id = $myRes[0]->dialogue_id;

				$myArr[] = array("dialogueId" => $dialogue_id , "name" => $name , "userID" => $myUserd , "image" => $image);
			}
		}
		if(empty($json)){
			$json = array("success" => 1, "result" => $myArr, "error" =>  "No Error Found");
		}
	}
}
echo json_encode($json);

