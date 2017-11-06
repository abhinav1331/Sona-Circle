<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);

$userID = $data_body['userID'];
$id = $data_body['id'];
$course = $data_body['course'];
$title = $data_body['title'];
$startDate = $data_body['startDate'];
$startDateA = explode("/" , $startDate);
$endDate = $data_body['endDate'];
$endDateA = explode("/" , $endDate);
if($userID == "" || $id == "" || $title == "" || $startDate == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "All Fields are Required");
} else {
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$rowCheck = $wpdb->get_var("SELECT count(`id`) FROM `im_education` WHERE `id` = $id");
		if($rowCheck != 0) {
			$rowData = $wpdb->get_results("SELECT * FROM `im_education` WHERE `id` = $id");
			$startDate = $startDateA[2]."-".$startDateA[1]."-".$startDateA[0];
			$getUserID = $rowData[0]->user_id;
			if($getUserID == $userID) {
				if($endDate == "Present") {
					$endDatee = "";
					$isPresent = 1;
				} else {
					$endDatee = $endDateA[2]."-".$endDateA[1]."-".$endDateA[0];
					$isPresent = 0;
				}
				$query1="UPDATE `im_education` SET `title` = '$title' WHERE `id`= $id";
				$wpdb->query($query1);	
				$query2="UPDATE `im_education` SET `start_date` = '$startDate' WHERE `id`= $id";
				$wpdb->query($query2);	
				$query3="UPDATE `im_education` SET `end_date` = '$endDatee' WHERE `id`= $id";
				$wpdb->query($query3);	
				$query4="UPDATE `im_education` SET `is_present` = '$isPresent' WHERE `id`= $id";
				$wpdb->query($query4);	
				$query5="UPDATE `im_education` SET `course_name` = '$course' WHERE `id`= $id";
				$wpdb->query($query5);	
				$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "Experiance not belong to current user");
			}
		} else {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Experiance ID");
		}
	}
}
echo json_encode($json);
?>