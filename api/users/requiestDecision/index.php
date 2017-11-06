<?php 
include("../../../wp-config.php");
global $wpdb;

$userID = $_GET['userID'];
$requestID = $_GET['requestID'];
$status = $_GET['status'];
if($userID == "" || $requestID == "" || $status == "") {
	$json = array("success" => 0, "result" => 0, "error" =>  "Parameters Missing");
}
else{
	$user = get_user_by( 'ID', $userID );
	if(empty($user)) {
		$json = array("success" => 0, "result" => 0, "error" =>  "Invalid User");
	} else {
		$reqData = $wpdb->get_results("SELECT * FROM `im_connects_requests` WHERE `id` = $requestID AND `status` = 0");
		if(empty($reqData)) {
			$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Request");
		} else {
			$reciverId = $reqData[0]->reciever_id;
			$senderID = $reqData[0]->sender_id;
			if($reciverId == $userID) {
				if($status == 1) {
					$query1="UPDATE `im_connects_requests` SET `status` = '$status' WHERE `id`= $requestID";
					$wpdb->query($query1);

					$wpdb->insert( 'im_conects', array(
						'user_id' => $userID,
						'user_friend_id' => $senderID,
						'status' => 1 )
					);
					$wpdb->insert( 'im_conects', array(
						'user_id' => $senderID,
						'user_friend_id' => $userID,
						'status' => 1 )
					);
					$name1 = get_user_meta($senderID , "first_name" , true);
					$name2 = get_user_meta($reciverId , "first_name" , true);
					$messageMy1 = "You and now friends with ".$name1;
					$messageMy2 = "You and now friends with ".$name2;
					NotificationSend($senderID , $reciverId , $messageMy1,2 ,$senderID);
					NotificationSend($reciverId , $senderID , $messageMy2,2 ,$reciverId);
					$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
				} elseif($status == 2) {
					$query1="UPDATE `im_connects_requests` SET `status` = '$status' WHERE `id`= $requestID";
					$wpdb->query($query1);
					$name2 = get_user_meta($reciverId , "first_name" , true);
					$messageMy = $name2." has declined your friend request";
					NotificationSend($reciverId , $senderID , $messageMy,2 ,$reciverId);
					$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
				} else {
					$json = array("success" => 0, "result" => 0, "error" =>  "Invalid Status");
				}
			} else {
				$json = array("success" => 0, "result" => 0, "error" =>  "Rquiest not belong to this user");
			}
		}
	}
}
echo json_encode($json);