<?php 
include("../../../wp-config.php");
global $wpdb;
$data_body = json_decode(file_get_contents("php://input"), true);

$userID = $data_body['userID'];
$title = $data_body['title'];
if($userID == "" || $title == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "All Fields are Required");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$wpdb->insert( 'im_skills', array(
		'user_id' => $userID,
		'name' => $title)
		);
		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
	}
}
echo json_encode($json);
?>