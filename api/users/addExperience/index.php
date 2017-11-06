<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);

$userID = $data_body['userID'];
$title = $data_body['title'];
$startDate = $data_body['startDate'];
$startDateA = explode("/" , $startDate);
$endDate = $data_body['endDate'];
$endDateA = explode("/" , $endDate);
// $endDate = new DateTime($endDate);
if($userID == "" || $title == "" || $startDate == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		if($endDate == "Present") {
			$ispresentStatus = 1;
			$endDatee = "";
		} else {
			$ispresentStatus = 0;
			//echo strtotime($endDate);
			$endDatee = $endDateA[2]."-".$endDateA[1]."-".$endDateA[0];
		}

		$wpdb->insert( 'im_experiance', array(
		'user_id' => $userID,
		'title' => $title,
		'start_date' => $startDateA[2]."-".$startDateA[1]."-".$startDateA[0],
		'end_date' => $endDatee,
		'is_present' => $ispresentStatus )
		);
		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		
	}
}
echo json_encode($json);