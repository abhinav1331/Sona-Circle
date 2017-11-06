<?php 
function sendMessage($target,$title,$message){
	$url = 'https://fcm.googleapis.com/fcm/send';
	$server_key = "AAAAzdk8eqA:APA91bG91lgNxnzYGt1t8KIHnu69WEVWfUlM1Jacd0_PkngkdLBHvTg49UW-c9dtsEUjcxMudvIEtBEpmKSHnnq62OkCrgkXb6C9edAPJ9H_nayYW5JjCufC0hH5NT4wIQ-EfipNoYGY";
	$fields = array (
		'to' => $target,
		"content_available"  => true,
		"priority" =>  "high",
		'notification' => array
			( 
			"sound"=>  "default",
			"badge"=>  "12",
			'title' => "$title",
			'body' => "$message",
			)
		);
	$headers = array(
	'Content-Type:application/json',
	'Authorization:key='.$server_key
	);

	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
	$result = curl_exec($ch);
	if ($result === FALSE) {
		die('FCM Send Error: ' . curl_error($ch));
	}
	curl_close($ch);
	return $result;
}

function NotificationSend($MyID , $senderID , $message, $type , $recoId) {
	global $wpdb;
	$timee = time();
	$wpdb->insert( 'im_notifications', array(
		'user_id' => $senderID,
		'message' => $message,
		'time' => $timee,
		'type' => $type,
		'recoId' => $recoId,
		'sender_id' => $MyID)
	);
}
 ?>