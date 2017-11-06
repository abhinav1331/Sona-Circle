<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$endorse_userID = $_GET['endorse_user'];
$endorse_skil = $_GET['endorse_skil'];

$userID = $_GET['userID'];
$id = $_GET['skill_id'];
if($userID == "" || $endorse_userID == "" || $endorse_skil == "" ) {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	$endorse_user = get_user_by( 'ID', $endorse_userID );
	if(empty($user) || empty($endorse_user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$rowCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_skills` WHERE `id` = $endorse_skil");
		if($rowCheck != 0) {
			$rowData = $wpdb->get_results("SELECT * FROM `im_skills` WHERE `id` = $endorse_skil");
			$getUserID = $rowData[0]->user_id;
			if($getUserID == $endorse_userID) {
				if($getUserID == $userID) {
					$json = array("success" => 0, "result" => 0, "error" =>  "User Can not Endrose his own skills");
				} else {

					$im_skills_endorsement = $wpdb->get_var("SELECT count(`id`) FROM `im_skills_endorsement` WHERE `skill_id` = $endorse_skil  AND `endorse_user` = $userID");
					if($im_skills_endorsement == 0) {
						$name = get_user_meta($userID , "first_name" , true);
						$firebaseTokenId = get_user_meta($endorse_userID , "firebaseTokenId" , true);
						$messageMy = $name." has Endorsed your skills";


						$wpdb->insert( 'im_skills_endorsement', array(
						'skill_id' => $endorse_skil,
						'endorse_user' => $userID)
						);

						sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
						NotificationSend($userID , $endorse_userID , $messageMy);
						$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
					} else {
						$json = array("success" => 0, "result" => 0, "error" =>  "You have already endrosed this skills");
					}
				}
			} else {

				$json = array("success" => 0, "result" => 0, "error" =>  "Experiance not belong to current user");
				
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Experiance ID");
		}
	}
}
echo json_encode($json);