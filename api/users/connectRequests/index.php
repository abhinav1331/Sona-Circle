<?php 
include("../../../wp-config.php");
global $wpdb;

$senderID = $_GET["senderID"];
$recieverID = $_GET["recieverID"];

if($senderID == "" || $recieverID =="")
	{
		$json = array("success" => 0, "result" => "", "error" =>  "no parameters");
	}
else
	{
		$sender = get_user_by( 'ID', $senderID );
		$reciever = get_user_by( 'ID', $recieverID );
		if(empty($sender) || empty($reciever) )
		{
			$json = array("success" => 0, "result" => "", "error" =>  "Invalid User");
		}
		else
		{
			if($senderID == $recieverID )
			{
				$json = array("success" => 0, "result" => "", "error" =>  "Same users");
			}
			else
			{
				$im_connect_requests = $wpdb->get_var("SELECT count(`id`) FROM `im_connects_requests` WHERE `sender_id` = $senderID  AND `reciever_id` = $recieverID");
				if($im_connect_requests == 0) 
				{	
					$im_conects = $wpdb->get_results("SELECT * FROM `im_conects` WHERE `sender_id` = $senderID  AND `reciever_id` = $recieverID");
					if(!empty($im_conects)) {
						$json = array("success" => 0, "result" => 0, "error" =>  "User already sent you a friend request");
					} else {
						$name = get_user_meta($senderID , "first_name" , true);
						$firebaseTokenId = get_user_meta($recieverID , "firebaseTokenId" , true);
						$messageMy = $name." has sent you friend request";


						$wpdb->insert( 'im_connects_requests', array(
							'sender_id' => $senderID,
							'reciever_id' => $recieverID,
							'status' => 0)
						);

						sendMessage($firebaseTokenId , "Sona Circle" , $messageMy);
						NotificationSend($senderID , $recieverID , $messageMy, 2 , $senderID);
						$json = array("success" => 1, "result" => 1, "error" =>  "No Error Found");
					}
				       
				}
				else
				{
					$json = array("success" => 0, "result" => 0, "error" =>  "User already sent you a friend request");
				}
			}
		}
	}
	echo json_encode($json);