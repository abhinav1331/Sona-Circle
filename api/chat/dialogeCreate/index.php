<?php 
include("../../../wp-config.php");
global $wpdb;
	
$userID = $_REQUEST['userID'];
$dialogueId = $_REQUEST['dialogueId'];
$name = $_REQUEST['name'];

$upload_dir = wp_upload_dir();
$date = new DateTime();
$string = $userID.$date->getTimestamp();
$lastUpdated = $date->getTimestamp();


if($userID == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		//File Section 


		if(count($_FILES) != 0) {
			$target_file = $upload_dir['path']."/".$string.'.jpg';
			move_uploaded_file($_FILES["imageUrl"]["tmp_name"], $target_file);
			$url = $upload_dir['url']."/".$string.".jpg";	
		} else {
			$url = "";
		}

		//File Section 
		$myData = $wpdb->get_results("SELECT * FROM `im_group_chat` WHERE `dialogue_id` =  '$dialogueId'");
		if(!empty($myData)) {
			$id =  $myData[0]->id;
			$query1="UPDATE `im_group_chat` SET `dialogue_id` = '$dialogueId' WHERE `id`= $id";
			$wpdb->query($query1);
			$query2="UPDATE `im_group_chat` SET `name` = '$name' WHERE `id`= $id";
			$wpdb->query($query2);
			$query3="UPDATE `im_group_chat` SET `lastUpdated` = '$lastUpdated' WHERE `id`= $id";
			$wpdb->query($query3);
			$query4="UPDATE `im_group_chat` SET `image` = '$url' WHERE `id`= $id";
			$wpdb->query($query4);
		} else {
			$wpdb->insert( 'im_group_chat', array(
				'user_id' => $userID,
				'dialogue_id' => $dialogueId,
				'name' => $name,
				'lastupdated' => $lastUpdated,
				'image' => $url)
			);
		}
		$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
		
	}
}
echo json_encode($json);