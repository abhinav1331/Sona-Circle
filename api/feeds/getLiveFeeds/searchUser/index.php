<?php 
include("../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$searchText = $_GET['searchText'];
$offset = $_GET['offset'];

if($userID == "") {
	$json = array("success" => 0, "result" => array(), "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => array(), "error" =>  "Invalid User");
	} else {
		if($searchText == "") {
			$myArray = array();
			$myUser = get_users();
			foreach ($myUser as $key => $myUsers) {
				$myArray[] = $myUsers->ID;
			}
			if($offset==1) {
			$offset=0;
			} else {
			$offset = ( $offset - 1 ) * 20; 
			}
			$myArray = array_slice( $myArray, $offset, 20 );

		} else {

		$myArray = array();
		$myUser = get_users();
		foreach ($myUser as $key => $myUsers) {
			$name = get_user_meta($myUsers->ID , "first_name" , true);
			if (strpos(strtolower($name), strtolower($searchText)) !== false) {
				$myArray[] = $myUsers->ID;
			}
			if (strpos($myUsers->data->user_email, $searchText) !== false) {
				$myArray[] = $myUsers->ID;
			}
		}
		$blockedUserArray = array();
		$blockUserCheck = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `user_id` = $userID AND `status` = 2");
		foreach ($blockUserCheck as $key => $value) {
			$blockedUserArray[] = $value->user_friend_id;
		}
		$i=1;
		foreach( $wpdb->get_results("SELECT * FROM `im_skills` WHERE `name` LIKE '%".$searchText."%'") as $key => $row) {
			$myArray[] = $row->user_id;
		}
		foreach( $wpdb->get_results("SELECT * FROM `im_interests` WHERE `name` LIKE '%".$searchText."%'") as $key => $row1) {
			$myArray[] = $row1->user_id;
		}
		foreach( $wpdb->get_results("SELECT * FROM `im_education` WHERE `title` LIKE '%".$searchText."%'") as $key => $row2) {
			$myArray[] = $row2->user_id;
		}
		foreach( $wpdb->get_results("SELECT * FROM `im_education` WHERE `course_name` LIKE '%".$searchText."%'") as $key => $row3) {
			$myArray[] = $row3->user_id;
		}
		foreach( $wpdb->get_results("SELECT * FROM `im_experiance` WHERE `name` LIKE '%".$searchText."%'") as $key => $row4) {
			$myArray[] = $row4->user_id;
		}
		if(empty($myArray)) {
			$json = array("success" => 0, "result" => array(), "error" =>  "No User Found");
		}else {
			$myArray = array_unique($myArray);
		}
		$myArray = array_diff($myArray , $blockedUserArray);
			if($offset==1) {
			$offset=0;
			} else {
			$offset = ( $offset - 1 ) * 20; 
			}
			$myArray = array_slice( $myArray, $offset, 20 );
			
		}
			$finArray = array();
			foreach ($myArray as $key => $myArrayVal) {
				$ameFirst = get_user_meta($myArrayVal , "first_name" , true);
				$userImageUrl = get_user_meta($myArrayVal , "userImageUrl" , true);
				$profession = get_user_meta($myArrayVal , "profession" , true);
				$nationality = get_user_meta($myArrayVal , "nationality" , true);
				$onlineStatus = get_user_meta($myArrayVal , "onlineStatus" , true);
				$onlineTime = get_user_meta($myArrayVal , "onlineTime" , true);
				if($onlineStatus == "true") {
					$onlineTime = "";
				}
				$finArray[] = array("userID" => $myArrayVal , "name" => $ameFirst, "userImageUrl" => $userImageUrl, "profession" => $profession, "nationality" => $nationality, "onlineStatus" => $onlineStatus , "onlineTime" => $onlineTime);
			}
			$finArray = str_replace("null",'""',json_encode($finArray));
			$finArray = json_decode($finArray);
			$json = array("success" => 1, "result" => $finArray, "error" =>  "No Error Found");
	}
}
echo json_encode($json);