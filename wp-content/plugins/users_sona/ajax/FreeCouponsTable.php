<?php 
include('../../../../wp-config.php');
global $wpdb;
	$couponName = $_POST['couponName'];
	$userIdCoupons = $_POST['userIdCoupons'];
	$startCouponsDate = $_POST['startCouponsDate'];
	$startDate = date("y-m-d", strtotime($startCouponsDate));
	$endCouponsDate = $_POST['endCouponsDate'];
	$endDate = date("y-m-d", strtotime($endCouponsDate));
	function genrateCouponsFunction() {
		$couponLength = array("8","9","10","7");
		$rand_keys = array_rand($couponLength, 1);
		$chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		$res = "";

		for ($i = 0; $i < $couponLength[$rand_keys]; $i++) {
			$res .= $chars[mt_rand(0, strlen($chars)-1)];
		}
		return $res;
	}
	// echo $couponCode = "aaaaaaaaaaaaaa";
	$couponCode = genrateCouponsFunction();
	$countt = $wpdb->get_var("SELECT count(`coupon_code`) FROM `im_user_coupon_code` where `coupon_code`='$couponCode'");
	if($countt == 0) {
		$myCode = $couponCode;
	} else {
		$myCode = genrateCouponsFunction();
	}
	$wpdb->insert( 'im_user_coupon_code', array(
		'user_id' => $userIdCoupons,
		'coupon_code' => $myCode,
		'coupon_name' => $couponName,
		'start_date' => $startDate,
		'end_date' => $endDate,
		'status' => 0 )
	);



foreach( $wpdb->get_results("SELECT * FROM `im_devToken` where `user_id` = $userIdCoupons") as $key => $row) {
	 $token_id11 = $row->token;
	 $user_id = $row->user_id;
	 $deviceType = $row->device_id;
		$registrationIds 	= 	array( $token_id11 );
		$data 				= 	array ('aps' => array ('alert' => "Abhinav Imark Testing" ) );
		if($deviceType == "Android") { 
			$serviceType = "AAAALwdlMuo:APA91bGp0X_EhzJtZmE8u2PqI8MnUo86Mxbl9dcZIuUHebKvs2zxZhdgywTikSeLTuKt_8Co4mVXvQt3hIvE2XR_NMG67q3BM0uO3Y6dcgfdFjGLKVWq4ISMYz85N8bQAo0_af8pgCWD";
		} else {
			$serviceType = "AAAALwdlMuo:APA91bGp0X_EhzJtZmE8u2PqI8MnUo86Mxbl9dcZIuUHebKvs2zxZhdgywTikSeLTuKt_8Co4mVXvQt3hIvE2XR_NMG67q3BM0uO3Y6dcgfdFjGLKVWq4ISMYz85N8bQAo0_af8pgCWD";
		}
		echo $pushNotificationStatus = get_user_meta($user_id,'pushNotificationStatus',true);
		if($pushNotificationStatus == 1 || $pushNotificationStatus == "") {
			$result	=	sendMessage($data, $token_id11 , $serviceType);
			
		}
}


function sendMessage($data,$target,$serviceType){

global $wpdb;
$title = "Hinger Pass";
$description = "Reward! Admin has provided you Free Coupon as per your activities in our Application";
	//FCM api URL
	$url 			= 'https://fcm.googleapis.com/fcm/send';
	//api_key available in Firebase Console -> Project Settings -> CLOUD MESSAGING -> Server key
	$server_key 	= $serviceType;
	$fields = array (
    'to' => $target,
   "content_available"  => true,
	 "priority" =>  "high",
	'notification' => array
			( 
				"sound"=>  "default",
				"badge"=>  "12",
				'title' => "$title",
				'body' => "$description",
			)

);
	//header with content_type api key
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
 ?>