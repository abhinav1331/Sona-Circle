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
			foreach( $wpdb->get_results("SELECT * FROM `im_interests` WHERE `user_id` = $userID") as $key => $row) {
				$myArry[] = array("interest_id" => $row->id ,"title" => $row->name );
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